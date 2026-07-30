#!/bin/bash

# Applet UUID Configuration
APPLET_UUID="window-search@ansori"
APPLET_DIR="$HOME/.local/share/cinnamon/applets/$APPLET_UUID"

echo "========================================"
echo " Starting Window Search Applet Installation "
echo "========================================"

# Check if the required files exist in the current directory
if [ ! -f "applet.js" ] || [ ! -f "metadata.json" ] || [ ! -f "settings-schema.json" ]; then
    echo "[Error] applet.js, metadata.json, or settings-schema.json not found!"
    echo "Please run this script from the extracted or cloned project directory."
    exit 1
fi

# Create the applet directory if it doesn't exist
echo "-> Creating applet directory at $APPLET_DIR..."
mkdir -p "$APPLET_DIR"

# Copy the files to the applet directory
echo "-> Copying files..."
cp applet.js "$APPLET_DIR/"
cp metadata.json "$APPLET_DIR/"
cp settings-schema.json "$APPLET_DIR/"

echo "========================================"
echo " Installation Complete! 🎉"
echo "========================================"
echo ""
echo "Next steps:"
echo "1. Restart Cinnamon by pressing Alt + F2, typing 'r', and pressing Enter."
echo "2. Open the 'Applets' application from the Cinnamon menu."
echo "3. Search for 'Window Search' and click the '+' button to add it to the panel."
echo ""
