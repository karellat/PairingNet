#!/bin/bash

# Define variables
URL="https://huggingface.co/datasets/AnonymousUser19/Fragments-dataset/resolve/main/Fragments%20dataset.zip"
ZIP_FILE="Fragments_dataset.zip"
TARGET_DIR="PairingNet Code"
RENAMED_DIR="309"

# Create the target directory if it does not exist
mkdir -p "$TARGET_DIR"

# Download the file
echo "Downloading dataset..."
wget -O "$ZIP_FILE" "$URL"

# Unzip the dataset
echo "Unzipping dataset..."
unzip "$ZIP_FILE"

# Find the extracted folder (assuming it is named after the zip file without .zip)
EXTRACTED_DIR=$(basename "$ZIP_FILE" .zip)

# Rename the extracted folder
echo "Renaming extracted directory to $RENAMED_DIR..."
mv "$EXTRACTED_DIR" "$RENAMED_DIR"

# Move the renamed directory to the target location
echo "Moving $RENAMED_DIR to $TARGET_DIR..."
mv "$RENAMED_DIR" "$TARGET_DIR"

# Clean up
echo "Cleaning up..."
rm "$ZIP_FILE"

echo "Done!"
