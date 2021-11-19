#!/bin/bash

PROJECT_ID="k8s-dev-328907"
TAG_NAME=$(date '+%Y-%m-%d_%H-%M-%S')

gcloud builds submit --tag gcr.io/$PROJECT_ID/scaffold-ruby:latest .
