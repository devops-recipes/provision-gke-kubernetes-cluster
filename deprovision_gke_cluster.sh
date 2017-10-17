# This script deprovisions a GKE cluster
#! /bin/bash -e

gcloud container clusters delete $1 --zone=$2
