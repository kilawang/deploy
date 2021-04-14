#!/bin/bash
kubectl create secret generic sqlserver-secret \
    --from-literal=SA_PASSWORD="Sql_server@pass"
