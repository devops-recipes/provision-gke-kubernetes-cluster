# This script deprovisions a GKE cluster
#! /bin/bash -e
gcloud config set compute/zone $2

gcloud -q container clusters delete $1 --zone=$2
