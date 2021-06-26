# https://arxiv.org/pdf/1612.09089.pdf
import pyaudio
import wave
import time, sys
import logging
import tensorflow as tf
from collections import deque
from classifier.classifier import Classifier
from datetime import datetime

if sys.platform != 'darwin':
    from pixel_ring import pixel_ring
    from gpiozero import LED

    power = LED(5)
    pixel_ring.pixel_ring.set_brightness(100)
    power.on()
with open("id/ID.txt", "r") as f:
    DEVICE_ID = f.readline()
import uuid
import requests, json
from threading import Thread

logging.basicConfig(filename="events.log",
                    filemode='a',
                    format='%(asctime)s,%(msecs)d %(name)s %(levelname)s %(message)s',
                    datefmt='%H:%M:%S',
                    level=logging.DEBUG)


def checkwildlife():
    r = requests.post("https://birdnet.cornell.edu/api/upload", files={
        "upload": open("files/current/five.wav", "rb")})
    prediction = r.json()["prediction"]
    if float(prediction["0"]["0"]["score"]) > .9:
        print(f'Wildlife detcted: {prediction["0"]["0"]["species"]}. Confidence: {float(prediction["0"]["0"]["score"])}')
    else:
        print("No wildlife detected.")
    return

class Listener:
    def __init__(self):
        self.CHUNK = 2752
        self.FORMAT = pyaudio.paInt16
        self.CHANNELS = 1
        self.RATE = 44100
        self.WAVE_OUTPUT_FILENAME = f"files/current/voice.wav"
        self.p = pyaudio.PyAudio()
        self.frames = deque([])
        self.c = Classifier()
        self.stream = None
        self.interpreter = tf.lite.Interpreter(model_path="model/combined_model.tflite")
        self.interpreter.allocate_tensors()
        self.input_details = self.interpreter.get_input_details()
        self.output_details = self.interpreter.get_output_details()
        self.mappings = {
            1: "fire",
            2: "gunshot",
            3: "chainsaw",
        }
        self.five_seconds = deque([])

    def ready(self):
        print("***Recording***")
        self.stream = self.p.open(format=self.FORMAT,
                                  channels=self.CHANNELS,
                                  rate=self.RATE,
                                  input=True,
                                  frames_per_buffer=self.CHUNK,
                                  input_device_index=1)

    def process(self):
        self.write(self.WAVE_OUTPUT_FILENAME)
        ds = self.c.get_wav([self.WAVE_OUTPUT_FILENAME])
        self.interpreter.set_tensor(self.input_details[0]['index'], ds)
        self.interpreter.invoke()
        output_data = self.interpreter.get_tensor(self.output_details[0]['index'])
        for index, num in enumerate(output_data[0]):
            if num > .99 and index > 0:
                if sys.platform != 'darwin':
                    pixel_ring.pixel_ring.listen()
                sound = self.mappings[index]
                # logging.info(f"{sound} detected")
                if index == 2:
                    if num > .9999:
                        print(f"{sound} detected. Confidence: {num}")
                        now = datetime.now()
                        now = now.replace(microsecond=0)
                        self.write(f"files/detected/{str(now)}.wav")
                        if sys.platform != 'darwin':
                            pixel_ring.pixel_ring.off()
                else:
                    print(f"{sound} detected. Confidence: {num}")
                    now = datetime.now()
                    now = now.replace(microsecond=0)
                    self.write(f"files/detected/{str(now)}.wav")
                    if sys.platform != 'darwin':
                        pixel_ring.pixel_ring.off()


                self.report(sound)
        self.frames.popleft()

    def write(self, filename, fs=False):
        wf = wave.open(filename, 'wb')
        wf.setnchannels(self.CHANNELS)
        wf.setsampwidth(self.p.get_sample_size(self.FORMAT))
        wf.setframerate(self.RATE)
        if fs:
            wf.writeframes(b''.join(list(self.five_seconds)))
        else:
            wf.writeframes(b''.join(list(self.frames)))
        wf.close()

    def listen(self):
        data = self.stream.read(self.CHUNK, exception_on_overflow=False)
        self.frames.append(data)
        self.five_seconds.append(data)
        if len(self.frames) == (44032 / self.CHUNK):
            self.process()
        if len(self.five_seconds) == (220160 / self.CHUNK):
            self.write("files/current/five.wav", fs=True)
            p = Thread(target=checkwildlife)
            p.start()
            p.join()
            self.five_seconds.clear()


    def report(self, sound):
        response = {
                    "type": 0,
                    "sound": sound,
                    "device_id": str(DEVICE_ID),
                    "location": "",
                    }
        response = json.dumps(response)
        # print("REPORTED...")
        # requests.post("http://47.37.119.216:8000/report", data=response)


if __name__ == '__main__':
    listener = Listener()
    listener.ready()

    while True:
        listener.listen()
