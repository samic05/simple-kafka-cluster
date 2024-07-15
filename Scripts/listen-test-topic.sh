#!/bin/sh
kafka-console-consumer.sh -topic hello-world --from-beginning --bootstrap-server localhost:9092
