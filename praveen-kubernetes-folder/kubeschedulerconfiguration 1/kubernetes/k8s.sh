#!/bin/bash
echo " Pod "

kubectl get pods
echo " service  "
kubectl get svc
echo " Deployment "
kubectl get deployment
echo "Statefull set"
kubectl get sts
echo "get PV"
kubectl get pv
echo "get PVC "
kubectl get pvc
echo "get Storage "
kubectl get sa 

