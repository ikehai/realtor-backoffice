# OpenClaw WhatsApp Self-Chat — Realtor Back Office

Minimal OpenClaw setup. Your WhatsApp number becomes an AI assistant
that only responds to messages YOU send to yourself. Send lead info
in plain text, get a structured Follow Up Boss-ready summary back.

## Requirements

- A computer that stays on (Mac, Linux, or Windows with WSL2)
- Node.js 22+ (https://nodejs.org)
- A real phone number with WhatsApp installed (NOT Google Voice)
- An OpenAI API key (https://platform.openai.com/api-keys)

## Setup (one time)

1. Open a terminal in this folder
2. Edit `openclaw.config.json5` — replace `sk-YOUR_OPENAI_API_KEY_HERE` with your real key
3. Run setup:

   bash setup.sh

## Run

   bash run.sh

A QR code will appear. On your phone:
  WhatsApp > Settings > Linked Devices > Link a Device > scan the QR

The gateway is now running. Leave the terminal open.

## How to use

Message YOURSELF on WhatsApp. Example:

   Lead: Maria Garcia, 305-555-1234, maria@email.com
   Looking for 3/2 in Coral Gables, budget 600k
   Came from Zillow, saw us last Tuesday

The assistant will reply with a clean structured summary:

   First Name: Maria
   Last Name: Garcia
   Phone: 305-555-1234
   Email: maria@email.com
   Property Interest: 3/2 in Coral Gables
   Budget: $600,000
   Source: Zillow
   Notes: Saw listing last Tuesday

Copy and paste that into Follow Up Boss.

## Run in background (so it survives terminal close)

On Mac/Linux:

   nohup bash run.sh > openclaw.log 2>&1 &

To stop it:

   pkill -f "openclaw gateway"

## Security note

dmPolicy is set to "self" — the bot ignores ALL incoming WhatsApp messages
except from your own number. No one else can interact with it.
