# Cisco Packet Tracer Lab 02 — Two networks connected by a router

**Format:** Simulator-based guided lab (September–October 2026)  
**Artifact status:** Written case study available; original Packet Tracer simulation file **not uploaded**.

**Purpose:** Route traffic between distinct IPv4 subnets.

**Build:** Two LAN segments connected by a Cisco 1941 router, with gateway addresses `192.168.1.1` and `192.168.2.1` in the guided scenario.

**Test described in earlier work:** Inter-subnet pings; the first ping sometimes timed out before later packets succeeded, consistent with initial address resolution.

**What I learnt:** A PC sends packets for other subnets to its default gateway. The router forwards traffic according to its routing table.

**Evidence boundary:** Original numerical ping output and the saved `.pkt` file are not in this repository. This is a case study, not a reproducible lab download.

## Reproduce and document

To make this lab reproducible, locate or rebuild the original Packet Tracer topology, save it as `lab-02.pkt`, and capture the interface/VLAN details and a fresh expected-vs-actual test result. Do not label recreated screenshots as the original.

[All networking projects](../README.md) · [Project 09 — Two-site network](../project-09/README.md)
