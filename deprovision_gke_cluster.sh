# This script deprovisions a GKE cluster
#! /bin/bash -e

# generate the kubectl config file
gcloud container clusters get-credentials $1 --zone $2

# replace service with your own service name
service="hello-world"

# check if services are running and delete cluster only if no service is found
response=$(kubectl get service $service || echo "ServiceNotFound")
echo "service query response: "$response

if [[ $response = "ServiceNotFound" ]]
then
   echo "no service found, deleting cluster"
   gcloud -q container clusters delete $1 --zone=$2
fi
