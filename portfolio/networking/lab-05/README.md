# Cisco Packet Tracer Lab 05 — VLAN isolation on a managed switch

**Format:** Simulator-based guided lab (September–October 2026)  
**Artifact status:** Written case study available; original Packet Tracer simulation file **not uploaded**.

**Purpose:** Split a physical switch into separate Layer 2 broadcast domains.

**Build:** Two logical segments on a Cisco switch: VLAN 10 STAFF, `192.168.10.0/24`; VLAN 20 GUEST, `192.168.20.0/24`.

**Test described:** Inspected access-port assignments and tested whether traffic could cross VLAN boundaries before routing was added.

**What I learnt:** Hosts on the same physical switch aren't automatically in the same logical network. A Layer 2 switch alone cannot route between distinct VLANs.

**Evidence boundary:** Source `.pkt` and final screenshot of `show vlan brief` not in the repository.

## Reproduce and document

To make this lab reproducible, locate or rebuild the original Packet Tracer topology, save it as `lab-05.pkt`, and capture the interface/VLAN details and a fresh expected-vs-actual test result. Do not label recreated screenshots as the original.

[All networking projects](../README.md) · [Project 09 — Two-site network](../project-09/README.md)
