# Packet Tracer verification and command notes

The matrix below summarises the checks performed in guided Packet Tracer sessions. It is **not** an automated test report or a dump of original device configuration files.

| Lab | Validation approach | Outcome / confidence |
| --- | --- | --- |
| 01 | Same-subnet PC-to-PC ping | LAN connectivity demonstrated in practice |
| 02 | Cross-network ping through router | Succeeded; initial ARP-related timeout discussed |
| 03 | Client DHCP lease and client connectivity | Guided setup completed |
| 04 | HTTP server access and hostname resolution | Guided DNS/web service exercise completed |
| 05 | Compare STAFF/GUEST access port and VLAN separation | VLAN segmentation exercised |
| 06 | Inter-VLAN ping through 802.1Q trunk and subinterfaces | Ping succeeded after configuration |
| 07 | Test GUEST → STAFF denial and permitted traffic | ACL behaviour exercised; original packet captures not available |
| 08 | Diagnose wrong gateway, wrong VLAN, disabled router subinterface | Fault scenarios investigated and corrected; one saved ping image has 3/4 replies |

## Useful Cisco IOS commands

These are **diagnostic command references**, not copied output from the original lab files.

```text
show ip interface brief
show running-config
show vlan brief
show interfaces trunk
show ip route
show access-lists
```

Example VLAN-trunk/subinterface *pattern* (illustrative; not verified original running-config):

```cisco
! Router: one tagged subinterface per VLAN
interface GigabitEthernet0/0.10
 encapsulation dot1Q 10
 ip address 192.168.10.1 255.255.255.0

interface GigabitEthernet0/0.20
 encapsulation dot1Q 20
 ip address 192.168.20.1 255.255.255.0
```

Example approach to access-control testing:

- Record source IP and destination IP.
- Test `ping` from GUEST to STAFF with the intended deny active.
- Test allowed traffic separately, so a broad accidental block is not mistaken for a correct ACL.
- Confirm on which interface and in which direction the ACL is applied.

## Evidence observed in earlier chats

- Packet Tracer command prompt showed a ping to `192.168.10.10` with **4 sent, 3 received and 1 lost**; three successive replies had TTL 127.
- Router CLI screenshot showed `GigabitEthernet0/0.10` as **administratively down/down** while `GigabitEthernet0/0.20` remained up/up.

These are descriptions of authentic screenshots, **not links to images already stored in GitHub**. Follow [EVIDENCE.md](../EVIDENCE.md) for the missing binary files.
