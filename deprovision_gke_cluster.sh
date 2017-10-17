# This script deprovisions a GKE cluster
#! /bin/bash -e

# get the cluster name from central state
cluster_name=$(shipctl get_resource_version_key "central_state" "cluster_name")
zone=$(shipctl get_resource_version_key "central_state" "zone")
gcloud container clusters delete $cluster_name --zone=$zone
