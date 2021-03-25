#!/bin/bash

list="{common|spock|sate|game}"
case $1 in
        poc)
		gcloud container clusters get-credentials poc --zone asia-southeast1-b --project h1gcp-308408
		kubectl config current-context
                ;;
        test)
		gcloud config set project kube-lab-297807
		gcloud container clusters get-credentials cluster-3  --region=asia-east1
		kubectl config current-context
                ;;
        *)
                echo "Usage: $0 $list"
                exit 1
esac


