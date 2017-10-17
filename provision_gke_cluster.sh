# This script provisions a GKE cluster
#! /bin/bash -e

gcloud config set compute/zone $2

gcloud container clusters create $1 --num-nodes=1 --machine-type=n1-standard-1
