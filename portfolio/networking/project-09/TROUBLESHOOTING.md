# Troubleshooting — Gateway/subinterface addressing error

## Symptom

PC0 (HQ Staff, 192.168.10.11) could reach PC2 in Engineering VLAN 20, but pings to PC3 in Guest VLAN 30 and HQ-SERVER in VLAN 40 failed. PC3 could not ping its gateway at 192.168.30.1.

## Investigation

1. Verified PC3 had 192.168.30.11/24 and gateway 192.168.30.1.
2. Enabled port labels and confirmed PC3 was on SW-HQ Fa0/5 and the server on Fa0/6.
3. Used `show ip interface brief` on R-HQ rather than changing the cables at random.
4. Found G0/0.30 had **192.168.40.1/24** instead of 192.168.30.1/24; G0/0.40 did not exist.

The existing subinterface showed `up/up`, demonstrating that physical/protocol status alone does not prove a correct IP configuration.

## Repair

Corrected G0/0.30 and created the missing G0/0.40 subinterface:

~~~
enable
configure terminal
interface gigabitEthernet 0/0.30
ip address 192.168.30.1 255.255.255.0
exit
interface gigabitEthernet 0/0.40
encapsulation dot1Q 40
ip address 192.168.40.1 255.255.255.0
end
copy running-config startup-config
~~~

## Verification

The subsequent `show ip interface brief` showed both subinterfaces up/up with the correct addresses. PC0 pings to PC3 and the HQ server succeeded (3 of 4 replies on their first successful test runs).

## Takeaway

A systematic order — host IP, physical port, VLAN assignment, trunk, subinterface IP and route — helped identify the actual cause without unnecessary configuration changes.
