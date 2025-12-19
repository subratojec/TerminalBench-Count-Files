#!/usr/bin/env bash
set -euo pipefail

mkdir -p /output

count=$(find /data/files -maxdepth 1 -type f -name "*.txt" | wc -l)

echo "$count" > /output/result.txt
