# Cisco Packet Tracer — Networking portfolio

**Nine documented simulations — all nine original `.pkt` files now available to download.**

This section covers progressive networking exercises (Labs 01–08, September–October 2026) followed by a larger two-site enterprise simulation (Project 09, November 2026). Each folder contains a distinct case study. **The original Packet Tracer simulation files are now included.** Most original screenshot evidence and exported running-config files are still absent.

## Labs 01–08

| Lab | Topic | What it demonstrates | Case study |
|---|---|---|---|
| 01 | First LAN | Layer 2 switching; PC0 → PC1 ping 4/4 | [Case study](lab-01/README.md) · [Download .pkt](lab-01/lab-01.pkt) |
| 02 | Inter-subnet routing | Default gateways; Cisco 1941 routing between two LANs | [Case study](lab-02/README.md) · [Download .pkt](lab-02/lab-02.pkt) |
| 03 | DHCP | Automatic client addressing and reserved IP ranges | [Case study](lab-03/README.md) · [Download .pkt](lab-03/lab-03.pkt) |
| 04 | DNS / HTTP | Name resolution, web server and hostname tests | [Case study](lab-04/README.md) · [Download .pkt](lab-04/lab-04.pkt) |
| 05 | VLAN isolation | STAFF vs GUEST broadcast domains | [Case study](lab-05/README.md) · [Download .pkt](lab-05/lab-05.pkt) |
| 06 | Router-on-a-stick | 802.1Q trunk and subinterfaces; 3/4 inter-VLAN ping | [Case study](lab-06/README.md) · [Download .pkt](lab-06/lab-06.pkt) |
| 07 | Extended ACLs | Guest-to-staff restriction exercise | [Case study](lab-07/README.md) · [Download .pkt](lab-07/lab-07.pkt) |
| 08 | Troubleshooting | Wrong gateway, wrong access VLAN, shutdown subinterface | [Case study](lab-08/README.md) · [Download .pkt](lab-08/lab-08.pkt) |

The [original combined case study](LABS-01-08-ARCHIVE.md) and [legacy test notes](TESTS.md) are retained for historical context.

## Project 09 — Two-site enterprise network

**[Read the Project 09 case study](project-09/README.md)** · [Download Project 09 simulation](project-09/enterprise-network-project-09.pkt)

Built separate **Newcastle HQ** and **Manchester branch** LANs, six VLANs, router-on-a-stick, OSPF area 0 between routers and extended ACLs to restrict guest access. Tests showed a FULL OSPF neighbour, remotely learned networks, inter-office pings, guest denies with ACL counters and troubleshooting an incorrectly addressed subinterface.

This is a simulated multi-site design, not a real-world WAN or deployed enterprise security architecture.

## Evidence and reproducibility

- **Present:** All nine original `.pkt` binary files, individual project case studies, plans, and previously recorded troubleshooting/test observations. See the [file provenance and checksum manifest](FILE-MANIFEST.md).
- **Missing:** Original topology screenshots, most CLI test screenshots, and raw sanitized device configuration exports.
- **Next action:** Open the saved simulations in Cisco Packet Tracer, inspect their device state, and capture fresh topology/configuration and connectivity evidence. These uploaded files match the originals byte-for-byte, but were not opened in Packet Tracer in this environment.

See the [portfolio evidence register](../EVIDENCE.md) and [practical skills matrix](../SKILLS.md).

The most useful interview walkthrough is [Project 09](project-09/README.md), especially the OSPF routing and gateway addressing error. For fundamentals, start at [Lab 01](lab-01/README.md) and work forward.
