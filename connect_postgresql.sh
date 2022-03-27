#!/bin/bash
INSTANCE_NAME="postgresql-1648293147"
kubectl port-forward --namespace default svc/${INSTANCE_NAME} 5432:5432
# parsing password from kubernetes secrets.
# export POSTGRES_PASSWORD=$(kubectl get secret --namespace default ${INSTANCE_NAME} -o jsonpath="{.data.postgres-password}" | base64 --decode)