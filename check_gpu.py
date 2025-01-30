import torch
# Print the version of pytorch
print(f"Torch: {torch.__version__}")
#  Check if CUDA is available
print(f"CUDA is available: {torch.cuda.is_available()}")
# Print available devices
for device in range(torch.cuda.device_count()):
    print(f"Device {device}")