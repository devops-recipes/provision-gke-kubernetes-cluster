# This script deprovisions a GKE cluster
#! /bin/bash -e

# generate the kubectl config file
gcloud container clusters get-credentials $1 --zone $2

# check if services are running and delete cluster only if no service is found
response=$(kubectl get pods --namespace $3)
echo "Pods for namespace: "$response

# delete all pods and services
kubectl -n $3 delete po,svc --all

# delete the container
gcloud -q container clusters delete $1 --zone=$2
