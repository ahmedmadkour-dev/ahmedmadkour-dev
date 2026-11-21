# Network plan — OSPF failover

## Device and port map

| Device A | Interface | Device B | Interface |
|---|---|---|---|
| R-HQ | GigabitEthernet0/0 | R-BR | GigabitEthernet0/0 |
| R-HQ | GigabitEthernet0/1 | R-BACKUP | GigabitEthernet0/0 |
| R-BR | GigabitEthernet0/1 | R-BACKUP | GigabitEthernet0/1 |
| R-HQ | GigabitEthernet0/2 | SW-HQ | FastEthernet0/1 |
| R-BR | GigabitEthernet0/2 | SW-BR | FastEthernet0/1 |
| SW-HQ | FastEthernet0/2 | PC-HQ | FastEthernet0 |
| SW-BR | FastEthernet0/2 | PC-BR | FastEthernet0 |

Router-router connections used separate point-to-point subnetworks. The lab was constructed with Cisco 2911 routers and 2960 switches.

## Router addressing

| Router | Interface | IPv4 | Prefix | Connected subnet |
|---|---|---|---|---|
| R-HQ | G0/0 | 10.0.0.1 | /30 | 10.0.0.0/30 |
| R-BR | G0/0 | 10.0.0.2 | /30 | 10.0.0.0/30 |
| R-HQ | G0/1 | 10.0.0.5 | /30 | 10.0.0.4/30 |
| R-BACKUP | G0/0 | 10.0.0.6 | /30 | 10.0.0.4/30 |
| R-BR | G0/1 | 10.0.0.9 | /30 | 10.0.0.8/30 |
| R-BACKUP | G0/1 | 10.0.0.10 | /30 | 10.0.0.8/30 |
| R-HQ | G0/2 | 192.168.10.1 | /24 | HQ LAN |
| R-BR | G0/2 | 192.168.20.1 | /24 | Branch LAN |

/30 = `255.255.255.252`; /24 = `255.255.255.0`. Each /30 provides two usable interface addresses. The three routed segments cannot all use the same connected subnet on separate interfaces.

## PCs

| Host | IP | Mask | Default gateway |
|---|---|---|---|
| PC-HQ | 192.168.10.10 | 255.255.255.0 | 192.168.10.1 |
| PC-BR | 192.168.20.10 | 255.255.255.0 | 192.168.20.1 |

The HQ IP and gateway are directly visible in the provided PC-HQ `ipconfig` screenshot. The Branch PC address is supported by its ping replies and the configured lab plan; no separate screenshot of PC-BR `ipconfig` was uploaded.

## OSPF plan

All router-to-router links participate in OSPF process 1, area 0:

| Router | Router ID | Advertised networks | Passive interface |
|---|---|---|---|
| R-HQ | 1.1.1.1 | 10.0.0.0/30, 10.0.0.4/30, 192.168.10.0/24 | G0/2 |
| R-BR | 2.2.2.2 | 10.0.0.0/30, 10.0.0.8/30, 192.168.20.0/24 | G0/2 |
| R-BACKUP | 3.3.3.3 | 10.0.0.4/30, 10.0.0.8/30 | None |

This is one simple backbone area. No redistribution, WAN encryption, access-control policy or QoS was configured for this project.

[Back to Project 10](README.md).
