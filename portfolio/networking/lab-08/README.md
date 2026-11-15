# Cisco Packet Tracer Lab 08 — Troubleshooting three injected faults

**Format:** Simulator-based guided lab (September–October 2026)  
**Artifact status:** Written case study available; original Packet Tracer simulation file **not uploaded**.

**Purpose:** Diagnose common connectivity failures instead of randomly changing settings.

**Faults deliberately investigated:**
1. Wrong host default gateway.
2. Wrong switch access-port VLAN.
3. Router subinterface `G0/0.10` administratively disabled.

**Repair and verification:** The earlier work recorded correction of the faults and subsequent `G0/0`, `G0/0.10` and `G0/0.20` showing up/up. An observed PC2 → PC0 ping received **3/4 replies**, with an initial timeout.

**What I learnt:** Check IP settings, interface status, VLAN membership, routing and test output in a disciplined order. `show ip interface brief` can identify administratively down subinterfaces.

**Evidence boundary:** Original router/terminal screenshots were reviewed in a prior session but aren't attached in this repository; no saved `.pkt` file is available here.

## Reproduce and document

To make this lab reproducible, locate or rebuild the original Packet Tracer topology, save it as `lab-08.pkt`, and capture the interface/VLAN details and a fresh expected-vs-actual test result. Do not label recreated screenshots as the original.

[All networking projects](../README.md) · [Project 09 — Two-site network](../project-09/README.md)
