# Project 09 — Two-site enterprise network (Cisco Packet Tracer)

**Built and tested:** 14 November 2026  
**Type:** Educational network simulation, not a live deployment  
**Status:** Original [Packet Tracer simulation](enterprise-network-project-09.pkt) uploaded; core network and ACL tests documented from the guided session. Raw device configuration exports and final screenshots still need to be added.

## Project overview

I designed a simulated company network with a **Newcastle headquarters** and a **Manchester branch**. I used VLANs to separate departments, 802.1Q trunks and router-on-a-stick for inter-VLAN communication, OSPF to exchange routes between the two offices, and extended ACLs to restrict guest access to internal resources.

This was my ninth Cisco Packet Tracer project, building on eight earlier networking labs. Unlike a single-feature exercise, it brought several network technologies together in one topology.

## Network topology

~~~mermaid
flowchart LR
  subgraph HQ["Newcastle HQ"]
    PC0["PC0 + PC1
Staff · VLAN 10"] --> SWHQ["SW-HQ
Cisco 2960"]
    PC2["PC2
Engineering · VLAN 20"] --> SWHQ
    PC3["PC3
Guest · VLAN 30"] --> SWHQ
    SERV["HQ-SERVER
VLAN 40"] --> SWHQ
    SWHQ <-->|"802.1Q trunk"| RHQ["R-HQ
Cisco 2911"]
  end
  RHQ <-->|"10.0.0.0/30
OSPF area 0"| RBR
  subgraph BR["Manchester branch"]
    RBR["R-BR
Cisco 2911"] <-->|"802.1Q trunk"| SWBR["SW-BR
Cisco 2960"]
    SWBR --> PC4["PC4
Staff · VLAN 50"]
    SWBR --> PC5["PC5
Guest · VLAN 60"]
  end
~~~

*The direct crossover link between the two routers represents an inter-office WAN in this simulation. It is not an encrypted or redundant real-world WAN.*

## Addressing plan

| Site | VLAN | Department | Network | Router gateway |
|---|---:|---|---|---|
| Newcastle | 10 | Staff | 192.168.10.0/24 | 192.168.10.1 |
| Newcastle | 20 | Engineering | 192.168.20.0/24 | 192.168.20.1 |
| Newcastle | 30 | Guest | 192.168.30.0/24 | 192.168.30.1 |
| Newcastle | 40 | Servers | 192.168.40.0/24 | 192.168.40.1 |
| Manchester | 50 | Staff | 192.168.50.0/24 | 192.168.50.1 |
| Manchester | 60 | Guest | 192.168.60.0/24 | 192.168.60.1 |

**Inter-router link:** R-HQ G0/1 = 10.0.0.1/30; R-BR G0/1 = 10.0.0.2/30. Hosts used static IP addresses for this project.

See [network plan](NETWORK-PLAN.md) for every host and switch port.

## Technical implementation

- **VLAN segmentation:** Four VLANs at HQ and two at the branch, with access ports assigned to the appropriate departments.
- **802.1Q and router-on-a-stick:** Each router uses G0/0 subinterfaces as the VLANs' default gateways. Switch Fa0/1 acts as the trunk.
- **OSPF:** Single-area OSPF process 1 runs between routers across G0/1; the VLAN subinterfaces are passive. R-HQ formed a FULL adjacency with R-BR and learned the two Manchester subnets via 10.0.0.2.
- **Guest restrictions:** Extended inbound ACLs on G0/0.30 (HQ) and G0/0.60 (branch) deny traffic to selected internal staff, engineering and server subnets. Staff-to-staff inter-office traffic remained operational.

## Evidence from tests

| Test | Observed result |
|---|---|
| HQ PC0 → PC1, same VLAN | 4/4 replies |
| HQ PC0 → PC2, inter-VLAN | 3/4 replies |
| R-HQ → R-BR, inter-router /30 | 4/5 replies |
| R-HQ OSPF neighbour | FULL/BDR on G0/1 |
| R-HQ learned Manchester subnets | OSPF routes to 192.168.50.0/24 and 192.168.60.0/24 |
| Manchester PC4 → Newcastle PC0 | 4/4 replies |
| Newcastle PC0 → Manchester PC4 | 4/4 replies |
| HQ Guest PC3 → staff, engineering, server | All denied; ACL hit counters observed |
| Branch Guest PC5 → branch staff, HQ staff, engineering, HQ server | All denied; PC5 → Engineering verified in final screenshot |
| Manchester staff connectivity after ACL | 4/4 replies to Newcastle staff |

See [test results](TEST-RESULTS.md) for more details and limitations.

## Troubleshooting highlight

During the build, VLAN 30 and VLAN 40 hosts were unreachable. I used `show ip interface brief` and discovered that G0/0.30 had been assigned **192.168.40.1** instead of **192.168.30.1**, and G0/0.40 was missing entirely. After correcting the address and creating the missing tagged subinterface, pings to both networks succeeded.

**Lesson:** An interface showing `up/up` can still be incorrectly configured. See [troubleshooting notes](TROUBLESHOOTING.md).

## What I learned

- Why switching within a VLAN differs from routing between VLANs.
- How trunk ports and 802.1Q subinterfaces work together.
- How OSPF installs routes to remote networks with a next-hop router.
- How the interface and direction of an ACL determine which traffic it filters.
- How to diagnose failures systematically using interface status, IP plans, routing tables, VLAN membership, pings and ACL hit counters.

## Files and outstanding evidence

- [x] [Original Project 09 Packet Tracer simulation](enterprise-network-project-09.pkt) — uploaded byte-for-byte and hash verified; not independently reopened here
- [ ] Screenshots of the topology, configurations, OSPF and test outputs
- [ ] Sanitised `show running-config` outputs for both routers and both switches

**Limitations:** DHCP, DNS, HTTP service testing, redundancy, failover and complete production-level firewall controls were *not* implemented or demonstrated. The guest ACLs end in `permit ip any any` and are intentionally broad learning-lab rules, not a secure production policy.

Related: [Packet Tracer Projects 01–08](../README.md).
