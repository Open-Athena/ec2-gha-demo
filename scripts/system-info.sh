#!/bin/bash
set -e

echo "=== System Information ==="
uname -a
echo
echo "=== CPU Info ==="
lscpu | head -20
echo
echo "=== Memory Info ==="
free -h
echo
echo "=== Disk Info ==="
df -h
