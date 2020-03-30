#!/usr/bin/env bash

echo "copying config files for vivid into default config folder ($HOME/.config)..."
cp -r vivid $HOME/.config 
echo "files moved to $HOME/.config/vivid. Restart your shell for settings to take effect."
