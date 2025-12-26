#!/bin/sh
set -e

echo "Activating feature 'claude-code'"
echo "Installing Claude Code CLI..."

# Install Claude Code by running the official installation script
curl -fsSL https://claude.ai/install.sh | bash

echo "Claude Code installation completed successfully"
