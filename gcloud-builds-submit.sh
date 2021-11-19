#!/bin/bash

PROJECT_ID="k8s-dev-328907"
TAG_NAME=$(date '+%Y-%m-%d_%H-%M-%S')

gcloud auth activate-service-account --key-file /var/secrets/google/key.json
gcloud builds submit --tag gcr.io/${PROJECT_ID}/scaffold-ruby:${TAG_NAME} --project $PROJECT_ID .
