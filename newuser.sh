#!/bin/bash

# === CONFIGURATION PROVIDED BY ADMIN ===
API_SERVER="https://172.30.1.2:6443"
TOKEN="eyJhbGciOiJSUzI1NiIsImtpZCI6Il9zQ3RMM2JKNGZvQmtuTllyV2JEQm9ldHltaG5WbGRsa2REbjl6OFF1WncifQ..."  # Put your full token here

# === STEP 1: Configure Cluster Info ===
kubectl config set-cluster my-cluster \
  --server="$API_SERVER" \
  --insecure-skip-tls-verify=true

# === STEP 2: Configure ServiceAccount Credentials ===
kubectl config set-credentials my-serviceaccount --token="$TOKEN"

# === STEP 3: Create Context for ServiceAccount ===
kubectl config set-context my-serviceaccount-context \
  --cluster=my-cluster \
  --user=my-serviceaccount

# === STEP 4: Switch to the new context ===
kubectl config use-context my-serviceaccount-context

echo "Context 'my-serviceaccount-context' has been configured!"
kubectl config view --minify | grep name:
