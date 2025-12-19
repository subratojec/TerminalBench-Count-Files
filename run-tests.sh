#!/usr/bin/env bash
set -euo pipefail

bash solution.sh 

pytest tests/
