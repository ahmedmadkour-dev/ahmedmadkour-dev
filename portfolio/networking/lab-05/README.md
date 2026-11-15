# Cisco Packet Tracer Lab 05 — VLAN isolation on a managed switch

**Format:** Simulator-based guided lab (September–October 2026)  
**Artifact status:** [Original Packet Tracer simulation — lab-05.pkt](lab-05.pkt) uploaded and checked byte-for-byte against the user-supplied file. The project has not been reopened in Packet Tracer within this environment.

**Purpose:** Split a physical switch into separate Layer 2 broadcast domains.

**Build:** Two logical segments on a Cisco switch: VLAN 10 STAFF, `192.168.10.0/24`; VLAN 20 GUEST, `192.168.20.0/24`.

**Test described:** Inspected access-port assignments and tested whether traffic could cross VLAN boundaries before routing was added.

**What I learnt:** Hosts on the same physical switch aren't automatically in the same logical network. A Layer 2 switch alone cannot route between distinct VLANs.

**Evidence boundary:** The saved simulation is included, but a final `show vlan brief` screenshot is not yet separately attached.

## Reproduce and document

Open [lab-05.pkt](lab-05.pkt) in Cisco Packet Tracer, confirm the saved configuration, and record a fresh expected-versus-actual connectivity test with a topology screenshot. The saved file is authentic, but it was not independently executed here.

[All networking projects](../README.md) · [Project 09 — Two-site network](../project-09/README.md)
