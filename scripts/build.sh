#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(dirname "$SCRIPT_DIR")"

# Default image name
IMAGE_NAME="${IMAGE_NAME:-read-qc-tools}"
TAG="${TAG:-local}"

cd "$REPO_ROOT"

echo "Building Docker image: ${IMAGE_NAME}:${TAG}"

docker build \
    -t "${IMAGE_NAME}:${TAG}" \
    .

echo "Build complete: ${IMAGE_NAME}:${TAG}"
echo ""
echo "Run with: docker run --rm -it -v \$(pwd):/data ${IMAGE_NAME}:${TAG}"
