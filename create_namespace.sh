#!/bin/bash
set -e

NAMESPACE="$1"

if [ -z "$NAMESPACE" ]; then
  echo "Usage: $0 <namespace>"
  exit 1
fi

# Create the namespace in Vault
vault namespace create "$NAMESPACE"

echo "Namespace '$NAMESPACE' created successfully." 