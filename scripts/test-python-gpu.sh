#!/bin/bash
set -e

echo "=== Python Version ==="
python3 --version || echo "Python3 not found"

echo
echo "=== PyTorch GPU Test ==="
python3 -c "
try:
    import torch
    print(f'PyTorch version: {torch.__version__}')
    print(f'CUDA available: {torch.cuda.is_available()}')
    if torch.cuda.is_available():
        print(f'CUDA device count: {torch.cuda.device_count()}')
        print(f'Current device: {torch.cuda.current_device()}')
        print(f'Device name: {torch.cuda.get_device_name(0)}')
        print(f'Device memory: {torch.cuda.get_device_properties(0).total_memory / 1024**3:.2f} GB')
except ImportError:
    print('PyTorch not installed')
" || echo "PyTorch test failed"
