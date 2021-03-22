#!/bin/bash

kubectl patch pvc sqlserver-volume --patch "$(cat ./patch-pvc.yaml)"
