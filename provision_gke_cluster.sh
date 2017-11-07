# This script provisions a GKE cluster
#! /bin/bash -e

gcloud container clusters create $1 --num-nodes=$2 --machine-type=$3
