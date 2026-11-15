# Software prototypes and experiments

This page covers product and automation prototypes. For the full business competition story, **FitLoop has its [own portfolio section](../fitloop/README.md)**.

## Sayyad — Arabic-first home services marketplace

**[Repository](https://github.com/ahmedmadkour-dev/sayyad)** · [Project report](https://github.com/ahmedmadkour-dev/sayyad/blob/main/PROJECT_REPORT.md)

An Arabic-first React/TypeScript prototype exploring discovery, bookings and provider onboarding for local trades in Libya. The app uses Supabase and a local-first data model. I configured the Supabase version and personally tested a real account login and a backend-persisted booking.

The preserved project's earlier validation recorded **160 passing tests in 49 files**, while production payments, provider operations and a full commercial deployment were not demonstrated. The public repo currently offers written documentation rather than an inspectable full source export.

## JARVIS — Desktop assistant and safe tool execution

**[Repository](https://github.com/ahmedmadkour-dev/jarvis-ai-assistant)** · [Project report](https://github.com/ahmedmadkour-dev/jarvis-ai-assistant/blob/main/PROJECT_REPORT.md)

Explored a Windows assistant integrating local/cloud models, voice, browser automation, memory and permission checks. I worked on component integration, requirements, repeated workflow tests and troubleshooting.

The most useful finding was how difficult reliable computer actions become when websites change or need authentication. The project is an experimental personal assistant, **not** a general autonomous agent or production security system. The public repo contains the written case study and technical report, but not the complete source export.

## FitLoop — Dedicated entrepreneurship case study

**[FitLoop website, pitch and Outstanding Individual award](../fitloop/README.md)** · [Separate FitLoop repository](https://github.com/ahmedmadkour-dev/fitloop)

A team alterations-marketplace idea. I built the interactive competition website and presentation material. See the dedicated case study for the competition result, prototype screenshots, design decisions and lessons.

## Jellyfin home media server — short experiment

Used an Ubuntu VM to host Jellyfin and stream media to an iPad on the home network. Considered Tailscale for access beyond the local network, but **successful remote use was not verified**. No source or configuration export is currently attached.

## Common learning

Designing an interface is only one layer: services also depend on processes, networks, permissions, stored data and tested error cases. These prototypes show product decisions and integration work, with verified and unverified features kept separate.
