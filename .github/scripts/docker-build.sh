#!/bin/bash

set -e

docker build -t quick-campaigns-api --platform=linux/amd64 .
docker tag quick-campaigns-api nas415/quick-campaigns-api:latest
docker push nas415/quick-campaigns-api:latest

echo "Built and pushed!!!"
