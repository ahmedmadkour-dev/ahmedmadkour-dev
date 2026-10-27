# Practical project portfolio

**Maintained by Ahmed | Last documented: 27 October 2026**

This is a collection of hands-on technical projects, not a claim that every area has been mastered. The goal is to show the system built, how it was tested, the issues encountered, and the learning that followed.

## Project directory

| Area | Projects / outcomes | Status |
| --- | --- | --- |
| [Cisco Packet Tracer](networking/README.md) | 8 increasingly complex networking exercises, culminating in fault diagnosis | **8 labs completed as guided exercises** |
| [Ubuntu / VirtualBox homelab](homelab/README.md) | Linux basics, remote SSH, Nginx web hosting, service/port/permission failures | **Labs 01–03 completed; Lab 04 attempted** |
| [AI and product development](software/README.md) | JARVIS, Sayyad and FitLoop, plus previous home media server testing | **Experimental assistant and interactive prototypes** |
| [Python exercises](python/README.md) | Conditionals, loops, input validation and debugging | **Ongoing learning** |
| [Independent technical/business experiments](experiments/README.md) | SEO keyword/SERP testing, lightweight customer discovery | **Exploratory, not a commercial product** |

## What the documentation demonstrates

**Design:** decide what a network, server or application should do.

**Implementation:** wire components, configure settings and use the right tools.

**Verification:** test connectivity, inspect HTTP responses, use router/switch or Linux commands, or validate app flows.

**Troubleshooting:** deliberately introduce failures, identify whether the fault is at the application, operating system, network or access-control layer, and restore service.

**Reflection:** separate observations from assumptions and unfinished work.

## Evidence and reproducibility

- [Evidence register](EVIDENCE.md): which genuine screenshots were reviewed and what original files are still needed for a fully reproducible portfolio.
- [Skills and confidence matrix](SKILLS.md): demonstrated exercises versus topics I'm still learning.
- **Not included yet:** original Cisco `.pkt` lab files, full VM images and several original chat screenshots. They are **not** represented as attached evidence here.
- Network configuration snippets are **representative reconstructions of the lab procedure** unless labelled as direct screenshots/logs; they are not exported router running-config files.

## Repository map

```text
portfolio/
├── README.md
├── EVIDENCE.md
├── SKILLS.md
├── networking/
│   ├── README.md
│   └── TESTS.md
├── homelab/
│   ├── README.md
│   └── TROUBLESHOOTING.md
├── software/
│   └── README.md
├── python/
│   └── README.md
└── experiments/
    └── README.md
```

## Authorship and integrity

I used AI assistants as learning and development tools. The case studies describe what I configured, tested and troubleshot, not independent proof of programming everything unaided. No passwords, private data, keys, complete VM disks or fabricated test results are included.
