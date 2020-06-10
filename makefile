#!/usr/bin/env make -f

up:
	docker-compose up --no-start
	docker-compose start zookeeper
	sleep 10
	docker-compose start kafka
	sleep 10
	docker-compose start kafka-connect
	sleep 5
	sleep 10
	docker-compose start

down:
	docker-compose down -v
