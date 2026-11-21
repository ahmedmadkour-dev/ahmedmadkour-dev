# Troubleshooting notes — Project 10

## 1. IP addresses assigned to the wrong router interfaces

The original IP-address plan and actual Packet Tracer cabling used different interface mappings. As a result, R-HQ originally had:

| Interface | Initially entered | Correct for actual cabling |
|---|---|---|
| G0/0 | 192.168.10.1/24 | 10.0.0.1/30 |
| G0/1 | 10.0.0.1/30 | 10.0.0.5/30 |
| G0/2 | 10.0.0.5/30 | 192.168.10.1/24 |

**Resolution:** Clear IP assignments using `no ip address` before reassigning them, avoiding overlapping connected-subnet configuration. R-BR was corrected similarly.

## 2. Router interfaces showed administratively down

All three routers initially reported disabled interfaces in `show ip interface brief`. This prevented router-to-router communication even where the cabling was physically present.

**Resolution:** `no shutdown` on each required GigabitEthernet interface. The unused backup router G0/2 appropriately remained disabled.

## 3. EXEC commands entered in configuration mode

`show ip interface brief` and `enable` were attempted at a `(config-if)#` prompt, resulting in invalid-input messages.

**Resolution:** Use `end` to return to privileged EXEC mode, or `do show ip interface brief` from configuration mode.

## 4. Incorrect ping input triggered a DNS lookup

An early mistyped ping target was treated as a hostname by IOS, which attempted DNS translation.

**Resolution:** Use the correct destination `ping 10.0.0.2` for the R-HQ → R-BR transit link.

## 5. Temporary OSPF INIT during failback

Immediately after `no shutdown` on the direct link, R-HQ showed its Branch neighbour `2.2.2.2` in `INIT/DROTHER` and continued routing through the backup. A later OSPF log showed transition `LOADING to FULL`, and a fresh route check returned to `10.0.0.2` with cost 2.

**Lesson:** Avoid declaring failback broken from an early snapshot. Observe adjacency state and check the routing table again after convergence.

## 6. Initial ICMP timeouts

Several first-time pings were 4/5; the later PC-to-PC test after restoration was 3/4. A first lost packet can be consistent with ARP or initial state establishment, but this cause was **not independently verified**. Repeat tests and inspect ARP if investigating further.

[Back to Project 10](README.md).
