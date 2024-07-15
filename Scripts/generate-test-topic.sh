#!/bin/sh
#run container
podman run -p 9092:9092 --rm docker.io/apache/kafka:3.7.1 
#create topic
kafka-topics.sh --create --topic hello-world --bootstrap-server localhost:9092 

#produce to the topic
kafka-console-producer.sh --topic hello-world --bootstrap-server localhost:9092<<EOF
"Hello World from kafka!"
"Other message"
"blablabla more info"
EOF
