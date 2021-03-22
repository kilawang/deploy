#!/bin/bash
kubectl create secret generic sqlserver-secret \
    --from-literal=SA_PASSWORD="Kila_test@pass"
