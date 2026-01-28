#!/usr/bin/env bash
set -euo pipefail
IMAGE="${1:-}"
if [[ -z "$IMAGE" ]]; then
  echo "Usage: $0 <image>"
  exit 1
fi
trivy image --severity HIGH,CRITICAL "$IMAGE"
