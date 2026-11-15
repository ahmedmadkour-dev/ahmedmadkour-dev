# Cisco Packet Tracer Lab 03 — Dynamic IPv4 addressing with DHCP

**Format:** Simulator-based guided lab (September–October 2026)  
**Artifact status:** [Original Packet Tracer simulation — lab-03.pkt](lab-03.pkt) uploaded and checked byte-for-byte against the user-supplied file. The project has not been reopened in Packet Tracer within this environment.

**Purpose:** Reduce manual client IP configuration using DHCP.

**Build:** A `192.168.10.0/24` LAN with a router/DHCP setup. The plan used default gateway `192.168.10.1` and reserved the addresses `.1` through `.9` rather than handing them to clients.

**Test described:** Configuring DHCP client address acquisition and checking resulting connectivity and gateway information.

**What I learnt:** DHCP distributes addresses and network settings dynamically; excluding reserved addresses avoids assigning infrastructure IPs to clients.

**Evidence boundary:** The saved simulation is included, but original client-lease screenshots and a raw DHCP configuration export are not attached.

## Reproduce and document

Open [lab-03.pkt](lab-03.pkt) in Cisco Packet Tracer, confirm the saved configuration, and record a fresh expected-versus-actual connectivity test with a topology screenshot. The saved file is authentic, but it was not independently executed here.

[All networking projects](../README.md) · [Project 09 — Two-site network](../project-09/README.md)
