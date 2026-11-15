# Cisco Packet Tracer Lab 02 — Two networks connected by a router

**Format:** Simulator-based guided lab (September–October 2026)  
**Artifact status:** [Original Packet Tracer simulation — lab-02.pkt](lab-02.pkt) uploaded and checked byte-for-byte against the user-supplied file. The project has not been reopened in Packet Tracer within this environment.

**Purpose:** Route traffic between distinct IPv4 subnets.

**Build:** Two LAN segments connected by a Cisco 1941 router, with gateway addresses `192.168.1.1` and `192.168.2.1` in the guided scenario.

**Test described in earlier work:** Inter-subnet pings; the first ping sometimes timed out before later packets succeeded, consistent with initial address resolution.

**What I learnt:** A PC sends packets for other subnets to its default gateway. The router forwards traffic according to its routing table.

**Evidence boundary:** The saved simulation is now included; original numerical ping output and configuration screenshots are still not attached. Previous ping observations come from the earlier guided session.

## Reproduce and document

Open [lab-02.pkt](lab-02.pkt) in Cisco Packet Tracer, confirm the saved configuration, and record a fresh expected-versus-actual connectivity test with a topology screenshot. The saved file is authentic, but it was not independently executed here.

[All networking projects](../README.md) · [Project 09 — Two-site network](../project-09/README.md)
