#!/bin/bash

list="{cluster setting name}"
case $1 in
        poc)
		gcloud container clusters get-credentials {CLUSTERNAME} --zone asia-southeast1-b --project {PROJECTNAME}
		kubectl config current-context
                ;;
        test)
		gcloud config set {PROJECTNAME}
		gcloud container clusters get-credentials {CLUSTERNAME}  --region=asia-east1
		kubectl config current-context
                ;;
        *)
                echo "Usage: $0 $list"
                exit 1
esac


