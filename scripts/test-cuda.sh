#!/bin/bash
set -e

echo "=== CUDA Version ==="
nvcc --version || echo "nvcc not found in PATH"
echo
echo "=== CUDA Device Query ==="

# Try to compile and run a simple CUDA program
cat > test_cuda.cu << 'EOF'
#include <stdio.h>
#include <cuda_runtime.h>

int main() {
    int deviceCount;
    cudaGetDeviceCount(&deviceCount);
    printf("CUDA Device Count: %d\n", deviceCount);

    for (int i = 0; i < deviceCount; i++) {
        cudaDeviceProp prop;
        cudaGetDeviceProperties(&prop, i);
        printf("\nDevice %d: %s\n", i, prop.name);
        printf("  Compute Capability: %d.%d\n", prop.major, prop.minor);
        printf("  Total Memory: %.2f GB\n", prop.totalGlobalMem / (1024.0 * 1024.0 * 1024.0));
        printf("  Multiprocessors: %d\n", prop.multiProcessorCount);
    }
    return 0;
}
EOF

if command -v nvcc &> /dev/null; then
    nvcc test_cuda.cu -o test_cuda && ./test_cuda
    rm -f test_cuda test_cuda.cu
else
    echo "nvcc not available, skipping CUDA compilation test"
fi
