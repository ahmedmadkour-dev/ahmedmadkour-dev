# Cisco Packet Tracer Lab 03 — Dynamic IPv4 addressing with DHCP

**Format:** Simulator-based guided lab (September–October 2026)  
**Artifact status:** Written case study available; original Packet Tracer simulation file **not uploaded**.

**Purpose:** Reduce manual client IP configuration using DHCP.

**Build:** A `192.168.10.0/24` LAN with a router/DHCP setup. The plan used default gateway `192.168.10.1` and reserved the addresses `.1` through `.9` rather than handing them to clients.

**Test described:** Configuring DHCP client address acquisition and checking resulting connectivity and gateway information.

**What I learnt:** DHCP distributes addresses and network settings dynamically; excluding reserved addresses avoids assigning infrastructure IPs to clients.

**Evidence boundary:** No original client lease screenshot, raw DHCP configuration export or `.pkt` file currently uploaded.

## Reproduce and document

To make this lab reproducible, locate or rebuild the original Packet Tracer topology, save it as `lab-03.pkt`, and capture the interface/VLAN details and a fresh expected-vs-actual test result. Do not label recreated screenshots as the original.

[All networking projects](../README.md) · [Project 09 — Two-site network](../project-09/README.md)
