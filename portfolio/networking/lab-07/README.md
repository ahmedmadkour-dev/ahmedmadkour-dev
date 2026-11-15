# Cisco Packet Tracer Lab 07 — Extended ACL — guest access restriction

**Format:** Simulator-based guided lab (September–October 2026)  
**Artifact status:** [Original Packet Tracer simulation — lab-07.pkt](lab-07.pkt) uploaded and checked byte-for-byte against the user-supplied file. The project has not been reopened in Packet Tracer within this environment.

**Purpose:** Restrict guest-initiated traffic to staff after inter-VLAN routing is configured.

**Build:** Applied an extended ACL to the routed VLAN environment to deny Guest → Staff traffic while permitting traffic allowed by the exercise's wider policy.

**Test plan from earlier work:** Try reaching STAFF from GUEST, then verify permitted paths still work. Compare positive and negative traffic tests so a broken network isn't mistaken for successful access control.

**What I learnt:** ACL rule order and interface direction determine which traffic is filtered; the mere presence of different VLANs doesn't create a firewall once routing is enabled.

**Evidence boundary:** The saved simulation is included, but independent ACL counter evidence and final rule export are not separately attached for this lab.

## Reproduce and document

Open [lab-07.pkt](lab-07.pkt) in Cisco Packet Tracer, confirm the saved configuration, and record a fresh expected-versus-actual connectivity test with a topology screenshot. The saved file is authentic, but it was not independently executed here.

[All networking projects](../README.md) · [Project 09 — Two-site network](../project-09/README.md)
