# Evidence and artifact register

**Last checked: 15 November 2026.** GitHub documentation reflects observed guided sessions and known repo contents. Screenshots seen in chats are not automatically GitHub files.

| Project | Present on GitHub | Still missing / not independently verified |
|---|---|---|
| FitLoop | Dedicated [competition portfolio](fitloop/README.md); [original demo screenshots](https://github.com/ahmedmadkour-dev/fitloop/tree/main/assets); FitLoop README/report | Pitch slides, Outstanding Individual award evidence, full application source export |
| Cisco Labs 01–08 | [Individual case studies](networking/README.md), preserved combined notes and test reference | **All eight original `.pkt` simulation files**, original screenshots, raw router/switch exports |
| Cisco Project 09 | [Detailed case study](networking/project-09/README.md), IP plan, test matrix and troubleshooting record | Original `.pkt` and most screenshots; complete configuration exports |
| Ubuntu homelab 01–04 | [Written case studies](homelab/README.md), troubleshooting | Several original screenshots, reusable setup/config exports |
| Linux Project 10 | [Bash script, systemd unit files and synthetic tests](homelab/project-10/README.md) reconstructed from session screenshots | Original file export from VM; full end-to-end *positive* alert-log test; original screenshots |
| Sayyad | README and detailed project report | Checked public source export; production deployment not shown |
| JARVIS | README and detailed project report | Checked public source export; full desktop/voice integration test not shown |

## Earlier screenshots inspected, not committed

Original chat images previously showed: Lab 01's 4/4 same-LAN ping, Lab 06's 3/4 inter-VLAN ping, Lab 08's administratively down router subinterface and 3/4 post-repair ping, homelab SSH/Nginx service tests, Project 09 OSPF/ACL results, and Project 10 monitoring output. Their binaries are **not** in this repository.

## How to improve the evidence

1. Locate and upload the saved Packet Tracer simulations into each lab's folder and Project 09's folder.
2. Capture clear cropped screenshots of topology, switch/router interfaces, ping tests and applied ACLs.
3. Export running configurations with credentials, user information and any live public IPs reviewed before publishing.
4. For FitLoop, attach the presentation, award evidence (if comfortable), an annotated walkthrough and safe source export.
5. For Linux, commit *code and configuration*, not VM disks, SSH private keys, credentials, local accounts, tokens or whole journal logs.
6. Record the **expected outcome / actual result / date** for every test. Do not describe 3/4 replies as 100% delivery.

Diagrams included in case studies are conceptual documentation unless specifically labelled as original exports.
