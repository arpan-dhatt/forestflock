import os, subprocess

with open("id/ID.txt", "r") as f:
    DEVICE_ID = f.readline()

global gsc


class GrandCentralStation:
    def __init__(self):
        with open("id/ID.txt", "r") as f:
            self.device_id = f.readline()
        self.launch_listener()

    def launch_listener(self):
        self.process = subprocess.Popen(
            f"python3 listen.py",
            shell=True, preexec_fn=os.setpgrp)
        print("Started Listener")

    def kill_listener(self):
        os.killpg(os.getpgid(self.process.pid), 9)
        print("Killed Listener")


gsc = GrandCentralStation()
