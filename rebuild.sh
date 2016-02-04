#!/usr/bin/env bash

docker build -t myredis:test redis/
docker build -t phpredis:test php/

