#!/bin/bash
set -e

NAMESPACE_FILE="namespaces.yaml"

if ! command -v yq &> /dev/null; then
  echo "yq is required. Install with: brew install yq"
  exit 1
fi

for ns in $(yq '.namespaces[]' "$NAMESPACE_FILE" | tr -d '"'); do
  ./create_namespace.sh "$ns"
done 