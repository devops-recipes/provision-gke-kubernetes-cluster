# This script provisions a GKE cluster
gcloud config set compute/zone us-central1-b

gcloud container clusters create test_cluster --num-nodes=1 --machine-type=n1-standard-1
