#!/usr/bin/env make -f

start:
	docker-compose up --no-start
	docker-compose start splunk
	sleep 30
	docker-compose start zookeeper
	sleep 10
	docker-compose start kafka
	sleep 10
	docker-compose start kafka-connect
	sleep 15
	docker-compose start

stop:
	docker-compose down -v
