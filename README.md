# EC2 Runner Demo

Demo usage of [Open-Athena/ec2] GitHub Actions runner. See:

- [minimal.yml]: short example workflow: launch a GPU instance, run `nvidia-smi` to verify
- [test-gpu.yml]: longer example, optionally sleeps (useful for testing SSH access/debugging on launched instance)

[Open-Athena/ec2]: https://github.com/Open-Athena/ec2
[minimal.yml]: .github/workflows/minimal.yml
[test-gpu.yml]: .github/workflows/test-gpu.yml
