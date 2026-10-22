# Installation Log

## 2026-10-21 — Initial VM Baseline

- Installed Ubuntu Server 24.04.2 LTS.
- Confirmed VMware virtual machine environment.
- Expanded the root logical volume from 19 GiB to 38 GiB.
- Confirmed Git is installed.
- Confirmed Docker is not installed.
- Confirmed NTP synchronization was active during initial inspection.
- Confirmed DHCP addressing: 192.168.31.146/24.
- Recorded gateway: 192.168.31.2.
- Recorded DNS server: 192.168.31.2.

## Pending
- Confirm timezone is Asia/Tehran.
- Decide on a stable IP reservation.
- Integrate with the infrastructure DNS and NTP services.
- Install and test Docker Engine and Compose.
- Evaluate a valid Jira deployment method.

## Git Repository Integration

- Local repository: /opt/jira-vm
- Remote: git@github.com:mortezaee1996/jira-vm.git
- Branch: main
- SSH authentication: successful
- Initial push to GitHub: successful
- Working tree: clean after push

## Docker Engine Installation

- Docker Engine: 29.9.2
- Docker Compose: v5.6.1
- Installation source: Official Docker Ubuntu APT repository
- Docker daemon: Responding to sudo CLI requests
- Non-root Docker access: Not enabled
- hello-world image: Successfully pulled
- Container execution: Pending final verification
