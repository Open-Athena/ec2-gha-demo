#!/bin/bash
set -e

echo "=== Checking self-termination setup ==="
echo "Instance should terminate automatically after this workflow completes."
echo
echo "=== Systemd service status ==="
sudo systemctl status github-runner-cleanup || echo "Service not found"
echo
echo "=== Instance termination behavior ==="
INSTANCE_ID=$(ec2-metadata --instance-id | cut -d " " -f 2)
aws ec2 describe-instance-attribute \
    --instance-id $INSTANCE_ID \
    --attribute instanceInitiatedShutdownBehavior \
    --region us-east-1 || echo "Could not check termination behavior"
