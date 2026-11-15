# Cisco Packet Tracer Lab 06 — Router-on-a-stick inter-VLAN routing

**Format:** Simulator-based guided lab (September–October 2026)  
**Artifact status:** [Original Packet Tracer simulation — lab-06.pkt](lab-06.pkt) uploaded and checked byte-for-byte against the user-supplied file. The project has not been reopened in Packet Tracer within this environment.

**Purpose:** Allow hosts in different VLANs to communicate through an 802.1Q trunk and router subinterfaces.

**Build:** Cisco 1941 router with subinterfaces `G0/0.10` (gateway `192.168.10.1`) and `G0/0.20` (gateway `192.168.20.1`). Switch trunk port used in that exercise: `Fa0/5`.

**Observed test:** PC0 → PC2 inter-VLAN ping succeeded with **3/4 replies**; the first timeout was consistent with ARP resolution.

**What I learnt:** Trunking carries tagged traffic for multiple VLANs, while router subinterfaces provide Layer 3 routing between those networks.

**Evidence boundary:** The saved simulation is included; the reported 3/4 ping result came from an earlier guided session, and the original screenshot is not attached.

## Reproduce and document

Open [lab-06.pkt](lab-06.pkt) in Cisco Packet Tracer, confirm the saved configuration, and record a fresh expected-versus-actual connectivity test with a topology screenshot. The saved file is authentic, but it was not independently executed here.

[All networking projects](../README.md) · [Project 09 — Two-site network](../project-09/README.md)
