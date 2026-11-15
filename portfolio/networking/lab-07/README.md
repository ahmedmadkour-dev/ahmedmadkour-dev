# Cisco Packet Tracer Lab 07 — Extended ACL — guest access restriction

**Format:** Simulator-based guided lab (September–October 2026)  
**Artifact status:** Written case study available; original Packet Tracer simulation file **not uploaded**.

**Purpose:** Restrict guest-initiated traffic to staff after inter-VLAN routing is configured.

**Build:** Applied an extended ACL to the routed VLAN environment to deny Guest → Staff traffic while permitting traffic allowed by the exercise's wider policy.

**Test plan from earlier work:** Try reaching STAFF from GUEST, then verify permitted paths still work. Compare positive and negative traffic tests so a broken network isn't mistaken for successful access control.

**What I learnt:** ACL rule order and interface direction determine which traffic is filtered; the mere presence of different VLANs doesn't create a firewall once routing is enabled.

**Evidence boundary:** No independent `show access-lists` counters, original rule export or `.pkt` currently available for this specific Lab 07. This is a guided-exercise record, not an audited security claim.

## Reproduce and document

To make this lab reproducible, locate or rebuild the original Packet Tracer topology, save it as `lab-07.pkt`, and capture the interface/VLAN details and a fresh expected-vs-actual test result. Do not label recreated screenshots as the original.

[All networking projects](../README.md) · [Project 09 — Two-site network](../project-09/README.md)
