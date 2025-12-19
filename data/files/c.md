# Terminal-Bench Sample Task – Count Text Files

## Overview
This repository contains an **Easy-level Terminal-Bench style task** designed to evaluate basic CLI reasoning in a deterministic, Docker-isolated environment.

The task requires counting `.txt` files in a directory and writing the result to a fixed output file, followed by automated validation using Python tests.

## Task Structure
- `task.yaml` – Human-written task instructions presented to the agent
- `solution.sh` – Oracle (gold) solution that completes the task deterministically
- `run-tests.sh` – Executes the oracle solution and then validates results
- `tests/` – Python tests verifying task success criteria
- `Dockerfile` – Defines the isolated runtime environment
- `data/` – Input files used by the task

## Execution Flow
1. The oracle solution (`solution.sh`) is executed inside Docker
2. Output is written to `/output/result.txt`
3. Python tests validate correctness and determinism

## Running Locally
```bash
docker build -t tb-easy .
docker run --rm -v "$(pwd)/data:/data" -v "$(pwd)/output:/output" tb-eas
