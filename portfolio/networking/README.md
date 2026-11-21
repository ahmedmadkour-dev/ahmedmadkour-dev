# Cisco Packet Tracer — Networking portfolio

**Ten documented simulations — all ten original `.pkt` files available to download.**

This section covers progressive networking exercises (Labs 01–08, September–October 2026) followed by a two-site enterprise simulation (Project 09) and an OSPF redundancy/failover lab (Project 10, November 2026). Each folder contains a distinct case study. **The original Packet Tracer simulation files are now included.** Most original screenshot evidence and exported running-config files are still absent.

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

## Project 10 — Redundant network and OSPF failover

**[Read the Project 10 case study](project-10/README.md)** · [Download the original `.pkt`](project-10/project-10-ospf-failover.pkt) · [View real PC-to-PC test screenshot](project-10/assets/pc-hq-to-pc-br-ping.png)

Added a third router and a backup path between HQ and Branch. Tested the primary route (OSPF cost 2), deliberately shut down the direct connection, verified traffic to the remote router LAN used the backup route (cost 3), and confirmed automatic restoration of the preferred route after re-enabling the connection. A subsequent cross-office PC ping received 3/4 replies.

The PC-to-PC test was carried out **after** failback, not during the primary-link outage. See the case study for the difference between demonstrated router-gateway recovery and still-unmeasured loss during reconvergence.

## Evidence and reproducibility

- **Present:** All ten original `.pkt` binary files, individual project case studies, plans, and previously recorded troubleshooting/test observations. See the [file provenance and checksum manifest](FILE-MANIFEST.md).
- **Missing:** Original topology screenshots, most CLI test screenshots (Project 10 includes one genuine PC-to-PC screenshot), and raw sanitized device configuration exports.
- **Next action:** Open the saved simulations in Cisco Packet Tracer, inspect their device state, and capture fresh topology/configuration and connectivity evidence. These uploaded files match the originals byte-for-byte, but were not opened in Packet Tracer in this environment.

See the [portfolio evidence register](../EVIDENCE.md) and [practical skills matrix](../SKILLS.md).

For a resilience-focused interview walkthrough, start with [Project 10](project-10/README.md). For multi-VLAN enterprise networking, [Project 09](project-09/README.md) documents OSPF routing and a gateway-addressing error. For fundamentals, start at [Lab 01](lab-01/README.md) and work forward.
