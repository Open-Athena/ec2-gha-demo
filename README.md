# EC2 Runner Demo

This repository demonstrates the usage of Open-Athena's self-terminating EC2 runner for GitHub Actions.

## What it does

The workflow in this repo:
1. Starts an EC2 GPU instance (g4dn.xlarge)
2. Runs various GPU tests:
   - `nvidia-smi` to verify GPU access
   - CUDA compilation test
   - PyTorch GPU availability check
3. Verifies self-termination is configured
4. Instance automatically terminates after workflow completes

## Usage

1. Ensure your organization has the required secrets:
   - `AWS_ROLE`: IAM role with EC2 permissions
   - `GH_SA_TOKEN`: GitHub token for runner registration

2. Run the workflow:
   - Push to main branch
   - Open a PR
   - Or trigger manually from Actions tab

## Workflow File

See [.github/workflows/test-gpu.yml](.github/workflows/test-gpu.yml) for the implementation.

## Key Features Demonstrated

- ✅ Minimal boilerplate (just 2 jobs)
- ✅ GPU instance access
- ✅ Automatic cleanup (no stop job needed)

## Monitoring

After the workflow runs, you can verify the instance was terminated by checking:
- AWS EC2 console
- GitHub Actions logs
- AWS CloudTrail for termination events