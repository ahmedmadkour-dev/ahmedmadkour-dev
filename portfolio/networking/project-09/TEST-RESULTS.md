# Test record — 14 November 2026

Results below are based on Packet Tracer CLI screenshots captured during Project 09. A first-packet timeout is preserved in the record instead of being hidden.

| Source | Destination / test | Observed |
|---|---|---|
| PC0 | PC1: 192.168.10.12 | 4/4 replies |
| PC0 | VLAN 10 gateway: 192.168.10.1 | 4/4 replies |
| PC0 | PC2: 192.168.20.11 | 3/4 replies |
| PC0 | PC3: 192.168.30.11 after repair | 3/4 replies |
| PC0 | HQ-SERVER: 192.168.40.10 after repair | 3/4 replies |
| R-HQ | R-BR G0/1: 10.0.0.2 | 4/5 replies |
| R-HQ | `show ip ospf neighbor` | FULL/BDR; neighbor 10.0.0.2 on G0/1 |
| R-HQ | `show ip route ospf` | OSPF routes to 192.168.50.0/24 and 192.168.60.0/24 via 10.0.0.2 |
| PC4 | PC0: 192.168.10.11 | 4/4 replies |
| PC0 | PC4: 192.168.50.11 | 4/4 replies |
| PC3, HQ guest | PC0: 192.168.10.11 | 0/4; denied |
| PC3, HQ guest | PC2: 192.168.20.11 | 0/4; denied |
| PC3, HQ guest | HQ-SERVER: 192.168.40.10 | 0/4; denied |
| PC5, branch guest | PC4: 192.168.50.11 | 0/4; denied |
| PC5, branch guest | PC0: 192.168.10.11 | 0/4; denied |
| PC5, branch guest | PC2: 192.168.20.11 | 0/4; denied (final test) |
| PC5, branch guest | HQ-SERVER: 192.168.40.10 | 0/4; denied |
| PC4, branch staff | PC0 after security policy | 4/4 replies |

### ACL verification

HQ router `show ip access-lists` counters showed **8** matches toward HQ Staff, **4** toward Engineering and **8** toward HQ Server.

Branch router counters showed **4** matches toward Branch Staff, **4** toward HQ Staff and **4** toward HQ Server *before* the final branch-guest-to-engineering ping. The final screenshot shows that ping failed 0/4, but the updated branch ACL counter for that specific rule was not captured.

Guest devices received messages such as `Reply from 192.168.60.1: Destination host unreachable`. Together with the applied ACL and matching rule counters, these support the intended security behaviour.

### Verification not performed

- Comprehensive reachability/denial matrix across every source and destination.
- DHCP lease assignment or DNS/HTTP testing.
- Alternate routing path or failure/reconvergence test.
- Reopening and independently checking the [uploaded original `.pkt` simulation](enterprise-network-project-09.pkt), plus collecting complete running-config exports.

The project demonstrates tested behaviour in a simulator, not a security audit or production deployment.
