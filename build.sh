#!/usr/bin/env bash
# build.sh — mock build for the NGSM-Base component.
#
# Stands in for this product team's own Jenkins/CI pipeline. In the
# real world this would be NGSM-Base's own existing build job -
# Unify orchestrates it, doesn't replace it.

set -euo pipefail

VERSION="${1:-4.2.1}"
mkdir -p build

echo "Building NGSM-Base ${VERSION}..."
echo "This is a mock NGSM-Base artifact for demo purposes — built $(date -u +%Y-%m-%dT%H:%M:%SZ)" > "build/ngsm-base-${VERSION}.tar.gz"
sha256sum "build/ngsm-base-${VERSION}.tar.gz" > "build/ngsm-base-${VERSION}.tar.gz.sha256"

echo "Build complete: build/ngsm-base-${VERSION}.tar.gz"
