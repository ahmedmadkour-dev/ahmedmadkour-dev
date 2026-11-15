# Cisco Packet Tracer — Networking portfolio

**Nine projects completed as guided simulations; original `.pkt` files not yet committed.**

This section covers progressive networking exercises (Labs 01–08, September–October 2026) followed by a larger two-site enterprise simulation (Project 09, November 2026). Each folder contains a distinct case study. **The original Packet Tracer simulation files and most original screenshot evidence are not present in this GitHub repository.**

## Labs 01–08

| Lab | Topic | What it demonstrates | Case study |
|---|---|---|---|
| 01 | First LAN | Layer 2 switching; PC0 → PC1 ping 4/4 | [Read](lab-01/README.md) |
| 02 | Inter-subnet routing | Default gateways; Cisco 1941 routing between two LANs | [Read](lab-02/README.md) |
| 03 | DHCP | Automatic client addressing and reserved IP ranges | [Read](lab-03/README.md) |
| 04 | DNS / HTTP | Name resolution, web server and hostname tests | [Read](lab-04/README.md) |
| 05 | VLAN isolation | STAFF vs GUEST broadcast domains | [Read](lab-05/README.md) |
| 06 | Router-on-a-stick | 802.1Q trunk and subinterfaces; 3/4 inter-VLAN ping | [Read](lab-06/README.md) |
| 07 | Extended ACLs | Guest-to-staff restriction exercise | [Read](lab-07/README.md) |
| 08 | Troubleshooting | Wrong gateway, wrong access VLAN, shutdown subinterface | [Read](lab-08/README.md) |

The [original combined case study](LABS-01-08-ARCHIVE.md) and [legacy test notes](TESTS.md) are retained for historical context.

## Project 09 — Two-site enterprise network

**[Read the Project 09 case study](project-09/README.md)**

Built separate **Newcastle HQ** and **Manchester branch** LANs, six VLANs, router-on-a-stick, OSPF area 0 between routers and extended ACLs to restrict guest access. Tests showed a FULL OSPF neighbour, remotely learned networks, inter-office pings, guest denies with ACL counters and troubleshooting an incorrectly addressed subinterface.

This is a simulated multi-site design, not a real-world WAN or deployed enterprise security architecture.

## Evidence and reproducibility

- **Present:** Written project descriptions, planned IPs, observed results recorded from earlier chat screenshots and troubleshooting notes.
- **Missing:** `lab-01.pkt` through `lab-08.pkt`, `enterprise-network-project-09.pkt`, original topology exports and most screenshots.
- **Next action:** Save/recover original `.pkt` simulations on the user's Windows PC, upload those files and add new screenshots showing the intended state and test outcomes. Do not mislabel reconstructed examples as device configuration exports.

See the [portfolio evidence register](../EVIDENCE.md) and [practical skills matrix](../SKILLS.md).

The most useful interview walkthrough is [Project 09](project-09/README.md), especially the OSPF routing and gateway addressing error. For fundamentals, start at [Lab 01](lab-01/README.md) and work forward.
