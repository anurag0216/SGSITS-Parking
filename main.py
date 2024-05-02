
import time
import argparse
import paho.mqtt.client as mqtt
import json
import requests

def on_connect(client, userdata, flags, rc):
    print("Conn ected with result code "+str(rc))
    client.subscribe("reco",1)


def on_message(client, userdata, msg):
    print("msg.payload" + str(msg.payload))
    api_url = "http://localhost/SGSITSparking/SGSITSparking/api.php?otp="+ str(msg.payload.decode())
    print(api_url)
    res = requests.get(api_url)
    print(str(res.content))
    print(res.status_code)
    client.publish("indore/sgsits/cs/parking/res", str(res.content.decode()))
    
    
    
    

time.sleep(1.0)
broker_address="broker.hivemq.com" 
port=1883
#broker_address="iot.eclipse.org" #use external broker
client = mqtt.Client("356sfl86sef8duhafoasp123") #create new instance

client.on_connect = on_connect
client.on_message = on_message
client.connect(broker_address,port) #connect to broker
client.subscribe("indore/sgsits/cs/parking/otp")
client.on_message = on_message

while True:
    client.loop_start()
    
   