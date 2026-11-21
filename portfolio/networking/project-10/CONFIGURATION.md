# Configuration reference — reconstructing Project 10

The commands below are **reconstructed from the guided configuration steps and screenshot-verified addresses**, not a `show running-config` export from the uploaded Packet Tracer binary. Use them only to reproduce the design on a fresh lab or compare with the saved simulation.

## R-HQ

```ios
enable
configure terminal
interface GigabitEthernet0/0
 ip address 10.0.0.1 255.255.255.252
 no shutdown
exit
interface GigabitEthernet0/1
 ip address 10.0.0.5 255.255.255.252
 no shutdown
exit
interface GigabitEthernet0/2
 ip address 192.168.10.1 255.255.255.0
 no shutdown
exit
router ospf 1
 router-id 1.1.1.1
 network 10.0.0.0 0.0.0.3 area 0
 network 10.0.0.4 0.0.0.3 area 0
 network 192.168.10.0 0.0.0.255 area 0
 passive-interface GigabitEthernet0/2
end
```

## R-BR

```ios
enable
configure terminal
interface GigabitEthernet0/0
 ip address 10.0.0.2 255.255.255.252
 no shutdown
exit
interface GigabitEthernet0/1
 ip address 10.0.0.9 255.255.255.252
 no shutdown
exit
interface GigabitEthernet0/2
 ip address 192.168.20.1 255.255.255.0
 no shutdown
exit
router ospf 1
 router-id 2.2.2.2
 network 10.0.0.0 0.0.0.3 area 0
 network 10.0.0.8 0.0.0.3 area 0
 network 192.168.20.0 0.0.0.255 area 0
 passive-interface GigabitEthernet0/2
end
```

## R-BACKUP

```ios
enable
configure terminal
interface GigabitEthernet0/0
 ip address 10.0.0.6 255.255.255.252
 no shutdown
exit
interface GigabitEthernet0/1
 ip address 10.0.0.10 255.255.255.252
 no shutdown
exit
router ospf 1
 router-id 3.3.3.3
 network 10.0.0.4 0.0.0.3 area 0
 network 10.0.0.8 0.0.0.3 area 0
end
```

## Verification commands

```ios
show ip interface brief
show ip ospf neighbor
show ip route ospf
show ip protocols
ping 192.168.20.1
```

To test **failure**, use `shutdown` on **R-HQ G0/0**, leaving R-HQ G0/1 available. To test **restoration**, use `no shutdown` on R-HQ G0/0. Confirm route and neighbour convergence rather than assuming an immediate transition.

Both PCs require their configured IPv4 address, /24 mask and local router's LAN IP as default gateway. Screenshots and test results belong in [TEST-RESULTS.md](TEST-RESULTS.md).

[Back to Project 10](README.md).
