# MQTT_Parking
## Consists of Mosquitto Broker which uses publisher/subscriber architecture.

The mosquitto broker stores the map for parking lot and has the information of all the empty and occupied parking positions in the parking area. 
Parking Model consists of sensor attached to every parking slot. These sensors run tcp client to send their status to the broker.
Also every new car arriving runs a tcp client and makes a request to mosquitto server to get and reserve a empty parking slot. All the connections and request goes over TCP using MQTT Protocol. 
Multiple client tries to connect to broker in separate threads to the broker. The service time of each client is noted to study the queuing delay and waiting time for customers to get their request served.
Traffic coming to the server follows the poisson arrival.

## Code Changes:-
### Server side handling:-
* database.c
* mosquitto.c
* mosquitto_broker.h

Files Location:- MQTT/mosquitto-1.4.5/src
### Client side changes:- 
A python script is run to send multiple requests.
The system runs of 3 types of clients corresponding to 3 request types.
* Put Client: Request from sensor placed at parking positon to occupy the position in map.
* Delete Client: Request from sensor placed at parking position to empty it and add in pool of free slots.
* Get Client: New customer arriving at the server asking to reserve and return a free slot.

Client threads are running independent of each other and service time for each client is noted to evaluate prformance. Clients are arriving according to Poisson Distribution.

File Location:- mosquitto-1.4.5/parking_simulation.py
