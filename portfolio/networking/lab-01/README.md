# Cisco Packet Tracer Lab 01 — First LAN — switching and ping

**Format:** Simulator-based guided lab (September–October 2026)  
**Artifact status:** Written case study available; original Packet Tracer simulation file **not uploaded**.

**Purpose:** Understand how two devices on the same IPv4 subnet communicate through a Layer 2 switch.

**Build:** PC0 and PC1 connected to a Cisco 2960-24TT switch. Example addresses from the completed exercise: 192.168.1.10/24 and 192.168.1.20/24.

**Test observed in the earlier session:** PC0 successfully pinged `192.168.1.20` with **4/4 replies, 0% packet loss**.

**What I learnt:** Hosts in the same VLAN/subnet can communicate through Layer 2 switching; a router is not necessary for local delivery. The devices use ARP to learn the destination MAC address.

**Not yet uploaded:** Original `.pkt` file, topology screenshot or saved configuration export.

## Reproduce and document

To make this lab reproducible, locate or rebuild the original Packet Tracer topology, save it as `lab-01.pkt`, and capture the interface/VLAN details and a fresh expected-vs-actual test result. Do not label recreated screenshots as the original.

[All networking projects](../README.md) · [Project 09 — Two-site network](../project-09/README.md)
