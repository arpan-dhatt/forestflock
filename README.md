# ForestFlock (Best Overall Sigmahacks 3)
1. [Video Demo](https://www.youtube.com/watch?v=tqgeitCGvJk)
1. [Devpost Article](https://devpost.com/software/forestflock)

## Inspiration
President Theodore Roosevelt once described camping in what became Yosemite National Park as “[being] like lying in a great solemn cathedral, far vaster and more beautiful than any built by the hand of man.” However, while we take great care of our grand cathedrals and monuments to prevent their decline, unfortunately, we don’t extend the same protection to our national wildernesses. In recent years, fires have shattered forests across the globe, from the United States, to Brazil, to Russia. By the time the world tunes in to the destruction, it is too late. Thousands of acres of pristine wilderness have been destroyed, displacing myriads of animals from their natural habitats and incinerating trees and ecosystems that have been developing for millennia. Many—if not all—of these fires could potentially have been prevented from demolishing Earth’s precious environments had people taken actions to stop them the moments they started. 

This is exactly what our project, ForestFlock, seeks to solve. By notifying wilderness protection agents of potential threats to the wilderness under their watch, we hope to stop countless ecosystem disasters from occurring. This early-warning system would offer forest rangers the opportunity to prevent irreversible damage to our planet by allowing them to stop catastrophes-in-the-making before it’s too late.


## What It Does
ForestFlock is a novel software and hardware system that gives agencies that monitor wilderness areas powerful insights into what is happening at all parts of their wilderness. ForestFlock consists of various sensor nodes that are connected in a wireless Bluetooth mesh network that collect and analyze sensor inputs and then transmit relevant information over large distances without an Internet connection using a mesh network. The sensor nodes would be self-sufficient with solar panels for power and the mesh network for connectivity.
 
The data can be accessed using an iPad app. The app allows one to see live updates on various events that are being triggered across the area being monitored as well as other weather updates. Users can also see localized insights for activity that happened near one node and they can visualize events on a map. The app also features an analytics dashboard that provides big-picture insights, giving forest rangers the ability to quickly and accurately address and highlight the issues that face their area before they spiral out of control.



## How We Built It
The iPad App

- We used SwiftUI to organize the UI and handle the data lifecycle

- WebSockets are used for the transmission of data to the server so the iPad updates in real-time with the inputs from the nodes

- MapKit is used in order to help the user visualize the dispersion of events and nodes

- CoreBluetooth to allow the iPad user to connect to the network directly if the network cannot connect to the server or requires a passthrough

The Mesh Network
- The mesh network was made using the Bluetooth Low Energy protocol. The network is written in Rust and runs on multiple threads to increase efficiency.

- We also made a custom encoding scheme written at a very low level (sending individual bytes encoded by a custom encoding algorithm) in order to condense all the node information with the constraints of the mesh network

- Signals exit the network at a final node that is connected to the Internet.

The Sound Station

- A Raspberry Pi (any models work but we tested on a 0, 3, and 4) serves as the brain, running the event detection AI and interfacing with the mesh network

- The Sound Station is housed in a 3D printed protective case with an attached photovoltaic cell allowing for continuous wilderness area monitoring

Event Detection AI
- The neural network is a convolutional network that categorizes the sounds it hears. It is trained using transfer-learning where the head of the network can be changed, but the base of the network is frozen. This greatly reduces the number of samples needed to train a new sound. This enables rangers to react to their environment and easily add custom sounds pertinent to their ecosystem while enabling the model to run using very low energy on a Raspberry Pi. The F1-Score of the model is 83.2.

The Weather Station
- Uses two DHT11 Temperature and Humidity sensors consisting of capacitive humidity sensors and thermistors to read temperature and humidity data from the environment

- Uses BMP180 high-precision digital barometer to read barometric pressure from the environment
Reads latitude and longitude from GY-GPS6MV2 GPS module with built-in EEPROM and antenna
Sensor data is collected by Arduino 101 microcontroller. The Arduino 101 was specifically chosen over the Arduino Uno because of the 101’s built-in Bluetooth Low Energy (BLE) capabilities thanks to the onboard Intel® Curie™ Module

- Sensor data is supplied to the ForestFlock mesh network via BLE technology. The Weather Station is housed in a 3D printed protective case with an attached photovoltaic cell allowing for continuous wilderness area monitoring


## Challenges We Faced
- We found the Bluetooth Low Energy protocol was very poorly documented, and so we had to rely on StackOverflow and obscure Russian forums to understand how the protocol could be fit to our needs. Furthermore, all the Bluetooth mesh code was written at a very low level (sending individual bytes encoded by a custom encoding algorithm)

- We were unable to remotely program our Raspberry Pi Zero W computers (chosen because of their built-in WiFi and BLE technology and small size) through VSCode’s SSH functionality due to the Raspberry Pi Zero W’s architecture. Remote SSH development using VSCode for Raspberry Pi boards is only supported on boards running on ARMv7 and ARMv8 architectures, while the Raspberry Pi Zero W runs on ARMv6 architecture. This forced us to switch to the standard. full-size Raspberry Pi and the Arduino 101 boards.

- Obtaining the data for the model proved challenging, especially since the training data was collected on a different microphone.


## What We Learned
The importance of planning everything in as much detail as possible before one begins a coding project

It is possible to function on 4 hours of sleep :)

The Bluetooth low-energy protocol as well as how to use raw TCP sockets

How to work with MapKit and CoreBluetooth

How hard it is to suppress false positives in sound detection 


## What’s Next For Forest Flock
We hope to build an API that allows forest rangers to not only see when an event occurs, but also connect with various other devices that forest management agencies use to respond to events like drones and dispatch systems. 

We hope to improve on the functionality of the analytics dashboard and include more accurate AI for the insights and predictions as well as allowing for more customizability in the way the dashboard is framed

We hope to develop even more different types of nodes that allow for more specialized and precise inputs to better the event recognition and to tailor our system to different ecosystems. 
