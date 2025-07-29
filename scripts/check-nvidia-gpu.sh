#!/bin/bash
set -e

echo "=== NVIDIA Driver Version ==="
nvidia-smi --query-gpu=driver_version --format=csv,noheader
echo
echo "=== GPU Information ==="
nvidia-smi
echo
echo "=== Detailed GPU Info ==="
nvidia-smi -q
