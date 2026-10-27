# AI, web products and home media experiments

This page links more detailed project repositories and keeps the project's **actual validation level** clear.

## JARVIS — AI desktop assistant

**[Repository](https://github.com/ahmedmadkour-dev/jarvis-ai-assistant)**

- **Purpose:** combine useful AI conversation with actual computer actions.
- **Components explored:** Gemini plus local Ollama/Qwen; faster-whisper/Piper voice options; wake word; PySide6/QML interface; Playwright/browser automation; Windows actions; memory/audit logging; permission gates.
- **Hands-on problem:** an AI can understand instructions even when a website's changing UI, sign-in flow or browser state makes reliable execution fail.
- **What worked:** strong voice/conversation experience and repeatable automation on some workflows.
- **Limitations:** not a generally reliable hands-free agent, and not production security software. Some connectors/adapters were experimental and not wired through end to end.
- **Honest authorship:** AI coding tools wrote or modified substantial code; my work centred on specifying, integrating, testing, debugging and revising it.

See the project's [technical report](https://github.com/ahmedmadkour-dev/jarvis-ai-assistant/blob/main/PROJECT_REPORT.md).

## Sayyad — Arabic-first trades marketplace

**[Repository](https://github.com/ahmedmadkour-dev/sayyad)**

- React/TypeScript interface aimed at matching customers with local tradespeople in Libya.
- Explored Arabic/English layout, onboarding, profiles, bookings, local/offline storage and Supabase integration.
- Personally tested creating a real account and a backend-persisted booking.
- Reported source validation: 160 passing automated tests across 49 files, with project-specific limitations recorded in its README.
- **Not** evidence of a scaled deployed marketplace or production payment platform.

See the [project report](https://github.com/ahmedmadkour-dev/sayyad/blob/main/PROJECT_REPORT.md).

## FitLoop — clothing alterations marketplace demo

**[Repository](https://github.com/ahmedmadkour-dev/fitloop)**

- Interactive product prototype created for a 2026 entrepreneurship competition.
- Worked on customer discovery flow, tailor filtering, alteration requests, simulated quote comparison and booking progress.
- Presented as a demo, not a live multi-user service: no real marketplace database, payments or production messaging.

See the [project report](https://github.com/ahmedmadkour-dev/fitloop/blob/main/PROJECT_REPORT.md).

## Jellyfin / home media server — practical experiment

- Used an Ubuntu VM to host Jellyfin and stream media to an iPad on the home network.
- Explored how a guest VM, a media server and a separate client device communicate.
- Considered Tailscale for access beyond the local network, but **successful remote operation was not verified**.
- No source/config export or screenshots currently included; this is a brief experience note, not a complete build guide.

## What ties these together

Product prototyping, Linux/networking knowledge and safe automation overlap: the UI is only one layer; deployments depend on processes, permissions, networks, data storage and reliable tests. I want to understand the underlying systems, not just generate a finished-looking interface.
