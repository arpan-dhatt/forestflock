#include <SoftwareSerial.h> 
#include <TinyGPS.h>
#include "DHT.h"
#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BMP085_U.h>
#include <CurieBLE.h>

float lat = 0, lon = 0;
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

BLEPeripheral blePeripheral;
BLEService weatherNodeService("1111");


BLECharacteristic weatherNodeChar("1A54",
        BLERead | BLENotify, 32);

unsigned long start_time = millis();
unsigned long curr_time = millis();
const unsigned long gps_delay = 43200000;

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
    blePeripheral.setLocalName("Weather Node");
    blePeripheral.setAdvertisedServiceUuid(weatherNodeService.uuid());
    blePeripheral.addAttribute(weatherNodeService);
    blePeripheral.addAttribute(weatherNodeChar);
    blePeripheral.begin();

    start_time = millis();
    curr_time = millis();
} 

void loop(){ 

    
    BLECentral central = blePeripheral.central();
    if (central) {
        while(central.connected()){
            
            curr_time = millis();
            unsigned long elapsed = curr_time - start_time;

            if(elapsed > gps_delay){
                if(gpsSerial.available()){
                    if(gps.encode(gpsSerial.read())){  
                        gps.f_get_position(&lat,&lon);
                    }
                }
                const unsigned char data[4] = {1212, 0x01, float(lat), float(lon)};
            
                weatherNodeChar.setValue(data, 28);
            }

            else{

                sensors_event_t event;
                bmp.getEvent(&event);
                if (event.pressure){
                    pressure = event.pressure;
                }
                humidity = (dht1.readHumidity() + dht2.readHumidity())/2;
                temp_cel = (dht1.readTemperature() + dht2.readTemperature())/2;
                
                const unsigned char data[5] = {1212, 0x02, float(temp_cel), float(humidity), float(pressure)};
                
                weatherNodeChar.setValue(data, 32);
            }

            delay(1000); 
        }
    }
} 