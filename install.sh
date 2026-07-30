#!/bin/bash

# Applet UUID Configuration
APPLET_UUID="window-search@ansori"
APPLET_DIR="$HOME/.local/share/cinnamon/applets/$APPLET_UUID"
SOURCE_DIR="./$APPLET_UUID"

echo "========================================"
echo " Starting Window Search Applet Installation "
echo "========================================"

# Check if the required files exist
if [ ! -f "$SOURCE_DIR/applet.js" ] || \
   [ ! -f "$SOURCE_DIR/metadata.json" ] || \
   [ ! -f "$SOURCE_DIR/settings-schema.json" ]; then
    echo "[Error] Required applet files were not found in '$SOURCE_DIR'."
    echo "Please run this script from the project root directory."
    exit 1
fi

# Create the applet directory if it doesn't exist
echo "-> Creating applet directory at $APPLET_DIR..."
mkdir -p "$APPLET_DIR"

# Copy all applet files
echo "-> Copying applet files..."
cp -r "$SOURCE_DIR/"* "$APPLET_DIR/"

echo "========================================"
echo " Installation Complete! 🎉"
echo "========================================"
echo ""
echo "Next steps:"
echo "1. Restart Cinnamon by pressing Alt + F2, typing 'r', and pressing Enter."
echo "2. Open the 'Applets' application from the Cinnamon menu."
echo "3. Search for 'Window Search' and click the '+' button to add it to the panel."
echo ""
