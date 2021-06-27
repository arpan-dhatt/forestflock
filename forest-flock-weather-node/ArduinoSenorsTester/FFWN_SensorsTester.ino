#include <SoftwareSerial.h> 
#include <TinyGPS.h>
#include "DHT.h"
#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BMP085_U.h>

float lat = 42.583645, lon = -83.2454883;
SoftwareSerial gpsSerial(3,4);
TinyGPS gps;

#define DHT1PIN 2
#define DHT2PIN 7
#define DHTTYPE DHT11
DHT dht1(DHT1PIN, DHTTYPE);
DHT dht2(DHT2PIN, DHTTYPE);
float humidity = 0, temp_cel = 0 ;

Adafruit_BMP085_Unified bmp = Adafruit_BMP085_Unified(10085);
float pressure = 0;

void setup(){
    Serial.begin(9600);
    gpsSerial.begin(9600);
    dht1.begin();
    dht2.begin();
    bmp.begin();
    if(gpsSerial.available()){
        if(gps.encode(gpsSerial.read())){  
            gps.f_get_position(&lat,&lon);
        }
    }
} 

void loop(){ 
    sensors_event_t event;
    bmp.getEvent(&event);
    if(event.pressure){
        pressure = event.pressure;
    }
    pressure = 1011.2;
    humidity = (dht1.readHumidity() + dht2.readHumidity())/2;
    temp_cel = (dht1.readTemperature() + dht2.readTemperature())/2;
    if(gpsSerial.available()){
        if(gps.encode(gpsSerial.read())){  
            gps.f_get_position(&lat,&lon);
        }
    }
    Serial.print("Elapsed time (seconds): ");
    Serial.print(int(millis()/1000));
    Serial.print(" Temperature (Celsius): ");
    Serial.print(temp_cel);
    Serial.print(" Humidity (%): ");
    Serial.print(humidity);
    Serial.print(" Pressure (hPa): ");
    Serial.print(pressure);
    Serial.print(" Lattitude: ");
    Serial.print(lat);
    Serial.print(" Longitude: ");
    Serial.println(lon);
    delay(5000);
} 