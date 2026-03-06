#!/usr/bin/env bash
set -e

echo "=== Starting OpenClaw WhatsApp Gateway ==="
echo ""
echo "A QR code will appear below. Scan it with WhatsApp:"
echo "  WhatsApp > Settings > Linked Devices > Link a Device"
echo ""

openclaw gateway --config openclaw.config.json5
