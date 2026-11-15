# Cisco Packet Tracer Lab 01 — First LAN — switching and ping

**Format:** Simulator-based guided lab (September–October 2026)  
**Artifact status:** [Original Packet Tracer simulation — lab-01.pkt](lab-01.pkt) uploaded and checked byte-for-byte against the user-supplied file. The project has not been reopened in Packet Tracer within this environment.

**Purpose:** Understand how two devices on the same IPv4 subnet communicate through a Layer 2 switch.

**Build:** PC0 and PC1 connected to a Cisco 2960-24TT switch. Example addresses from the completed exercise: 192.168.1.10/24 and 192.168.1.20/24.

**Test observed in the earlier session:** PC0 successfully pinged `192.168.1.20` with **4/4 replies, 0% packet loss**.

**What I learnt:** Hosts in the same VLAN/subnet can communicate through Layer 2 switching; a router is not necessary for local delivery. The devices use ARP to learn the destination MAC address.

**Evidence boundary:** The saved Packet Tracer simulation is now included. The original topology screenshot and any device-configuration export still need to be attached.

## Reproduce and document

Open [lab-01.pkt](lab-01.pkt) in Cisco Packet Tracer, confirm the saved configuration, and record a fresh expected-versus-actual connectivity test with a topology screenshot. The saved file is authentic, but it was not independently executed here.

[All networking projects](../README.md) · [Project 09 — Two-site network](../project-09/README.md)
