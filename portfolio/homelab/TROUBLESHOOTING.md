# Homelab 03 — fault injection, diagnosis and repair

**Environment:** Ubuntu guest running Nginx and OpenSSH; Windows host reaching services via VirtualBox NAT forwards.

This was a learning exercise with intentional failures, not an incident on a production system.

## Baseline

- Ubuntu Nginx process listening on TCP **80**.
- Windows browser uses **127.0.0.1:8080** via host-to-guest port forwarding **8080 → 80**.
- SSH continues through a separate **2222 → 22** mapping.
- Baseline page returns **HTTP 200** when requested inside Ubuntu.

A genuine screenshot of `sudo ss -ltnp` shows both `nginx` on `0.0.0.0:80` and `sshd` on `0.0.0.0:22`. Another shows `curl -I http://127.0.0.1` returning `HTTP/1.1 200 OK` on 18 October 2026.

## Fault 1 — stopped web service

**Injected:** `sudo systemctl stop nginx`

**Symptom:** browser unable to load the site. SSH connection continued to work.

**Reasoning:** SSH and Nginx are separate daemons using different ports. A working SSH login does not imply the web server is healthy.

**Repair:** `sudo systemctl start nginx`, then check status and request the page again.

**Lesson:** check service state *before* changing firewall or IP settings.

## Fault 2 — HTTP port-forward mismatch

**Injected:** incorrect mapping involving HTTP guest port `8081` rather than the Nginx listening port `80`.

**Symptom:** web page stopped loading from Windows. Inside Ubuntu, `curl` still returned HTTP 200 and Nginx still listened on port 80.

**Reasoning:** the web process was healthy; the path between Windows and the VM was incorrectly pointed at the wrong guest port.

**Repair:** restore the forwarding rule to Windows host `8080` → Ubuntu guest `80`; test from the host browser again.

**Lesson:** diagnose the host-to-guest path independently of the application process.

## Fault 3 — HTTP 403 after changing file permissions

**Injected:** restrict `/var/www/html/index.html` so only its owner could read/write it:

```bash
sudo chmod 600 /var/www/html/index.html
```

**Symptom:** Nginx still served an HTTP response, but the page returned **403 Forbidden**.

**Reasoning:** this was not a stopped service, missing gateway or wrong browser port. The Nginx worker could not read the page under its normal permissions.

**Repair:**

```bash
sudo chmod 644 /var/www/html/index.html
curl -I http://127.0.0.1
```

**Lesson:** HTTP status codes distinguish classes of problems. `403` is very different from a connection refusal or timeout.

## Reusable diagnostic decision process

```text
Can't load the site?
  |
  +-- Can I SSH into the guest? ---- no --> check VM/NAT/SSH
  |
  +-- Does Nginx run? -------------- no --> inspect systemctl, start service
  |
  +-- Does curl on guest return 200? yes --> inspect host port forwarding
  |
  +-- Does curl return 403? -------- yes --> inspect web-root permissions
  |
  +-- Retest both guest and host after repair
```

### Evidence boundaries

The recorded observations above come from interactive exercises and saved chat screenshots. They are not represented as automated monitoring or an independently replayable test suite. No original VM disk, raw logs, secret keys or image files are committed here yet.
