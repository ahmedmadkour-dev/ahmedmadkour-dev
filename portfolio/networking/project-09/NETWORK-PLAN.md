# Network plan — Project 09

## Physical connections

| From | Port | To | Port |
|---|---|---|---|
| R-HQ | G0/0 | SW-HQ | Fa0/1 |
| R-HQ | G0/1 | R-BR | G0/1 |
| R-BR | G0/0 | SW-BR | Fa0/1 |
| SW-HQ | Fa0/2 | PC0 | Fa0 |
| SW-HQ | Fa0/3 | PC1 | Fa0 |
| SW-HQ | Fa0/4 | PC2 | Fa0 |
| SW-HQ | Fa0/5 | PC3 | Fa0 |
| SW-HQ | Fa0/6 | HQ-SERVER | Fa0 |
| SW-BR | Fa0/2 | PC4 | Fa0 |
| SW-BR | Fa0/3 | PC5 | Fa0 |

Straight-through copper connects hosts to switches and routers to switches; a crossover cable connects the routers.

## Host addressing

| Host | Purpose | VLAN | IP | Gateway |
|---|---|---:|---|---|
| PC0 | HQ Staff | 10 | 192.168.10.11/24 | 192.168.10.1 |
| PC1 | HQ Staff | 10 | 192.168.10.12/24 | 192.168.10.1 |
| PC2 | HQ Engineering | 20 | 192.168.20.11/24 | 192.168.20.1 |
| PC3 | HQ Guest | 30 | 192.168.30.11/24 | 192.168.30.1 |
| HQ-SERVER | HQ Server | 40 | 192.168.40.10/24 | 192.168.40.1 |
| PC4 | Branch Staff | 50 | 192.168.50.11/24 | 192.168.50.1 |
| PC5 | Branch Guest | 60 | 192.168.60.11/24 | 192.168.60.1 |

All host subnet masks are 255.255.255.0.

## Routers and routing

- R-HQ subinterfaces: G0/0.10 (192.168.10.1), G0/0.20 (192.168.20.1), G0/0.30 (192.168.30.1), G0/0.40 (192.168.40.1).
- R-BR subinterfaces: G0/0.50 (192.168.50.1) and G0/0.60 (192.168.60.1).
- R-HQ G0/1 is 10.0.0.1/30, R-BR G0/1 is 10.0.0.2/30; both use subnet mask 255.255.255.252.
- OSPF process 1, area 0, with G0/1 active for neighbour discovery and LAN subinterfaces passive.
- The simulated routers were named R-HQ and R-BR in the workspace; the CLI prompt still showed `Router#` in some evidence screenshots.

## VLAN trunk configuration

- SW-HQ Fa0/1: 802.1Q trunk, allowed VLANs 10,20,30,40. Access ports Fa0/2–3 VLAN 10; Fa0/4 VLAN 20; Fa0/5 VLAN 30; Fa0/6 VLAN 40.
- SW-BR Fa0/1: 802.1Q trunk, allowed VLANs 50,60. Fa0/2 VLAN 50; Fa0/3 VLAN 60.

## ACL policy tested

| ACL | Inbound router subinterface | Denied destinations |
|---|---|---|
| HQ_GUEST_RESTRICTIONS | R-HQ G0/0.30 | 192.168.10.0/24; .20.0/24; .40.0/24; .50.0/24 |
| BR_GUEST_RESTRICTIONS | R-BR G0/0.60 | 192.168.50.0/24; .10.0/24; .20.0/24; .40.0/24 |

Both end with `permit ip any any`; the policy is a limited educational example.
