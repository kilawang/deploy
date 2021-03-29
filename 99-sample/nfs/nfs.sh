#!/bin/bash
helm install nfs-server-provisioner stable/nfs-server-provisioner \
 --set persistence.enabled=true --set persistence.size=10Gi --namespace=default
