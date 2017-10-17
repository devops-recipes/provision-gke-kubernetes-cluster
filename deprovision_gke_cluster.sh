# This script deprovisions a GKE cluster
#! /bin/bash -e
gcloud config set compute/zone us-central1-b

gcloud -q container clusters delete $1 --zone=us-central1-b
