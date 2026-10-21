# VM-JIRA Infrastructure Lab

## Purpose
Laboratory environment for Jira evaluation, software testing,
bug tracking, and infrastructure project management.

## Virtual Machine
- Hostname: jira-vm
- OS: Ubuntu Server 24.04.2 LTS
- Hypervisor: VMware ESXi
- CPU: 4 vCPU
- RAM: 15 GiB
- Virtual disk: 40 GiB
- Root filesystem: 38 GiB
- Network interface: ens33
- Current IP: 192.168.31.146/24
- Gateway: 192.168.31.2

## Current Baseline
- Git: Installed
- Docker: Not installed
- NTP: Active; synchronized
- DNS: 192.168.31.2
- Network addressing: DHCP
- Logical volume: ubuntu-vg/ubuntu-lv

## Planned Work
1. Complete OS baseline and security configuration.
2. Stabilize IP and integrate DNS/NTP with infrastructure.
3. Install Docker Engine and Docker Compose.
4. Evaluate an authorized Jira deployment method.
5. Document configuration, tests, and troubleshooting.

## Security
Never commit passwords, access tokens, private keys,
or real environment files.
