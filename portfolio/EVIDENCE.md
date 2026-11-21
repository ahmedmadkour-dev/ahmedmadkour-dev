# Evidence and artifact register

**Last checked: 21 November 2026.** GitHub documentation reflects observed guided sessions and known repo contents. Screenshots seen in chats are not automatically GitHub files.

| Project | Present on GitHub | Still missing / not independently verified |
|---|---|---|
| FitLoop | Dedicated [competition portfolio](fitloop/README.md); [original demo screenshots](https://github.com/ahmedmadkour-dev/fitloop/tree/main/assets); FitLoop README/report | Pitch slides, Outstanding Individual award evidence, full application source export |
| Cisco Labs 01–08 | [Individual case studies and original `.pkt` files](networking/README.md), preserved combined notes and test reference | Original screenshots and raw router/switch exports; re-opening original simulations in Packet Tracer for independent verification |
| Cisco Project 09 | [Original `.pkt` simulation](networking/project-09/enterprise-network-project-09.pkt), detailed case study, IP plan, test matrix and troubleshooting record | Most original screenshots, complete configuration exports and an independent fresh run of the saved simulation |
| Cisco Project 10 | [Original `.pkt` simulation, diagram, test report and original PC-to-PC ping screenshot](networking/project-10/README.md) | Re-open saved file independently; save original router outputs; repeat PC-to-PC traffic test during primary-link outage and measure convergence time |
| Ubuntu homelab 01–04 | [Written case studies](homelab/README.md), troubleshooting | Several original screenshots, reusable setup/config exports |
| Linux Project 10 | [Bash script, systemd unit files and synthetic tests](homelab/project-10/README.md) reconstructed from session screenshots | Original file export from VM; full end-to-end *positive* alert-log test; original screenshots |
| Sayyad | README and detailed project report | Checked public source export; production deployment not shown |
| JARVIS | README and detailed project report | Checked public source export; full desktop/voice integration test not shown |

## Earlier screenshots inspected, not committed

Original chat images previously showed: Lab 01's 4/4 same-LAN ping, Lab 06's 3/4 inter-VLAN ping, Lab 08's administratively down router subinterface and 3/4 post-repair ping, homelab SSH/Nginx service tests, Project 09 OSPF/ACL results, and Project 10 monitoring output. Their binaries are **not** in this repository.

## How to improve the evidence

1. **Completed:** Upload all ten original Packet Tracer simulations to their folders. Their byte counts and SHA-256 hashes are recorded in the [file manifest](networking/FILE-MANIFEST.md).
2. Capture clear cropped screenshots of topology, switch/router interfaces, ping tests and applied ACLs.
3. Export running configurations with credentials, user information and any live public IPs reviewed before publishing.
4. For FitLoop, attach the presentation, award evidence (if comfortable), an annotated walkthrough and safe source export.
5. For Linux, commit *code and configuration*, not VM disks, SSH private keys, credentials, local accounts, tokens or whole journal logs.
6. Record the **expected outcome / actual result / date** for every test. Do not describe 3/4 replies as 100% delivery.

Diagrams included in case studies are conceptual documentation unless specifically labelled as original exports.
