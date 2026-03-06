#!/usr/bin/env bash
set -e

echo "=== OpenClaw WhatsApp Self-Chat Setup ==="
echo ""

# Check Node version
NODE_VERSION=$(node -v 2>/dev/null | sed 's/v//' | cut -d. -f1)
if [ -z "$NODE_VERSION" ] || [ "$NODE_VERSION" -lt 22 ]; then
  echo "ERROR: Node.js 22 or higher is required."
  echo "Install it from: https://nodejs.org"
  exit 1
fi
echo "[OK] Node.js $(node -v) detected"

# Install openclaw globally
echo ""
echo "Installing openclaw..."
npm install -g openclaw@latest
echo "[OK] openclaw installed"

# Check if config has placeholder values
if grep -q "sk-YOUR_OPENAI_API_KEY_HERE" openclaw.config.json5; then
  echo ""
  echo "================================================================"
  echo "  ACTION REQUIRED: Edit openclaw.config.json5 before running!"
  echo "  Replace 'sk-YOUR_OPENAI_API_KEY_HERE' with your OpenAI key."
  echo "================================================================"
  echo ""
fi

echo ""
echo "=== Setup complete ==="
echo ""
echo "Next steps:"
echo "  1. Edit openclaw.config.json5 and add your OpenAI API key"
echo "  2. Run: bash run.sh"
echo "  3. Scan the QR code with WhatsApp on your phone"
echo "  4. Message YOURSELF on WhatsApp with lead info"
echo ""
