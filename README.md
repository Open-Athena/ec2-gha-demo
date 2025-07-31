# EC2 Runner Demo

Demo usage of [Open-Athena/ec2@dev] GitHub Actions runner. See:

- [minimal.yml]: short example workflow: launch a GPU instance, run `nvidia-smi` to verify.
- [test-gpu.yml]: longer example, optionally sleeps (useful for testing SSH access/debugging on launched instance).
- [multi-job.yml]: demonstrates running multiple jobs in sequence on the same instance.

[Open-Athena/ec2@dev]: https://github.com/Open-Athena/ec2/tree/dev
[minimal.yml]: .github/workflows/minimal.yml
[test-gpu.yml]: .github/workflows/test-gpu.yml
[multi-job.yml]: .github/workflows/multi-job.yml
