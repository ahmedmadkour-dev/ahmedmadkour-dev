# Evidence register and missing original artifacts

**Reviewed:** 27 October 2026. **Important:** this repository currently contains written case studies and links to existing project reports. It does **not** contain the original screenshot image files from earlier ChatGPT sessions, `.pkt` exports, or VM images. The connector used for this documentation could read the images for fact-checking but did not provide a working binary-image upload path to GitHub.

The following entries describe **real images reviewed from earlier chats**. Do not label an illustrative diagram, reconstructed command or this written description as a screenshot.

| Work | Observed in authentic chat image | Suggested eventual file |
| --- | --- | --- |
| Packet Tracer Lab 08 | PC terminal: ping `192.168.10.10`, **3/4 replies**, first timeout | `assets/evidence/packet-tracer-ping.png` |
| Packet Tracer Lab 08 | Router CLI: `G0/0.10` administratively down, `G0/0.20` up | `assets/evidence/packet-tracer-subinterface.png` |
| Homelab 01 | Ubuntu terminal: `echo`, `cat`, `ls -l`, `chmod 600` practice | `assets/evidence/linux-permissions.png` |
| Homelab 01 | Windows SSH terminal: Ubuntu login + `whoami`, `hostname`, `pwd` | `assets/evidence/ssh-remote-login.png` |
| Homelab 03 | `ss -ltnp` shows Nginx on **:80** and sshd on **:22** | `assets/evidence/server-listeners.png` |
| Homelab 03 | `curl -I http://127.0.0.1` shows `HTTP/1.1 200 OK` | `assets/evidence/nginx-http-200.png` |
| Homelab 04 | VirtualBox Manager showing the two Ubuntu homelab VMs during rebuild | `assets/evidence/vm-rebuild.png` |

## How to finish the evidence pack

1. Export screenshots from the original chat or local machine and upload them to the corresponding `assets/evidence/` paths in this repo.
2. Remove or crop private usernames, tokens, email addresses, private file paths and any nonessential network details before making images public. Lab RFC1918 addresses are examples, but check the full screen.
3. Confirm filenames; then embed them in the relevant case-study READMEs with Markdown `![Meaningful test description](../assets/evidence/name.png)`.
4. Save original Cisco `.pkt` files (and sanitized router config snapshots) in `portfolio/networking/lab-01/`, etc., once available.
5. For home servers, commit setup notes or scripts rather than VM disks, private SSH keys, config secrets or copied credentials.
6. Re-run tests where possible and record date, expected outcome and actual outcome.

**Interpretation rule:** screenshots document one visible state at one moment; they are not proof that every possible network path or application flow was tested. A single 3/4 ping result must not be described as 100% packet delivery.

## Visuals

The Mermaid diagrams in the networking and homelab case studies are **conceptual diagrams written for documentation**, not screenshots or original topology exports.
