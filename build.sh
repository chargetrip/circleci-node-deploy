#!/usr/bin/env bash

docker build -t circleci-node-deploy .
docker tag circleci-node-deploy:latest chargetripio/circleci-node-deploy:latest
docker push chargetripio/circleci-node-deploy:latest