# Cisco Packet Tracer Lab 08 — Troubleshooting three injected faults

**Format:** Simulator-based guided lab (September–October 2026)  
**Artifact status:** [Original Packet Tracer simulation — lab-08.pkt](lab-08.pkt) uploaded and checked byte-for-byte against the user-supplied file. The project has not been reopened in Packet Tracer within this environment.

**Purpose:** Diagnose common connectivity failures instead of randomly changing settings.

**Faults deliberately investigated:**
1. Wrong host default gateway.
2. Wrong switch access-port VLAN.
3. Router subinterface `G0/0.10` administratively disabled.

**Repair and verification:** The earlier work recorded correction of the faults and subsequent `G0/0`, `G0/0.10` and `G0/0.20` showing up/up. An observed PC2 → PC0 ping received **3/4 replies**, with an initial timeout.

**What I learnt:** Check IP settings, interface status, VLAN membership, routing and test output in a disciplined order. `show ip interface brief` can identify administratively down subinterfaces.

**Evidence boundary:** The saved simulation is included; the earlier troubleshooting screenshots have not been added to this repository.

## Reproduce and document

Open [lab-08.pkt](lab-08.pkt) in Cisco Packet Tracer, confirm the saved configuration, and record a fresh expected-versus-actual connectivity test with a topology screenshot. The saved file is authentic, but it was not independently executed here.

[All networking projects](../README.md) · [Project 09 — Two-site network](../project-09/README.md)
