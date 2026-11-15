# Cisco Packet Tracer Lab 06 — Router-on-a-stick inter-VLAN routing

**Format:** Simulator-based guided lab (September–October 2026)  
**Artifact status:** Written case study available; original Packet Tracer simulation file **not uploaded**.

**Purpose:** Allow hosts in different VLANs to communicate through an 802.1Q trunk and router subinterfaces.

**Build:** Cisco 1941 router with subinterfaces `G0/0.10` (gateway `192.168.10.1`) and `G0/0.20` (gateway `192.168.20.1`). Switch trunk port used in that exercise: `Fa0/5`.

**Observed test:** PC0 → PC2 inter-VLAN ping succeeded with **3/4 replies**; the first timeout was consistent with ARP resolution.

**What I learnt:** Trunking carries tagged traffic for multiple VLANs, while router subinterfaces provide Layer 3 routing between those networks.

**Evidence boundary:** The observed result comes from an earlier chat. The original `.pkt` and screenshots are not committed.

## Reproduce and document

To make this lab reproducible, locate or rebuild the original Packet Tracer topology, save it as `lab-06.pkt`, and capture the interface/VLAN details and a fresh expected-vs-actual test result. Do not label recreated screenshots as the original.

[All networking projects](../README.md) · [Project 09 — Two-site network](../project-09/README.md)
