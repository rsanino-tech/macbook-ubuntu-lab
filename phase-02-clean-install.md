═══════════════════════════════════════
PHASE 2 — UBUNTU 24.04 LTS INSTALLATION & SYSTEM INITIALIZATION
═══════════════════════════════════════

OBJECTIVE:
- Perform a clean installation of Ubuntu 24.04 LTS on legacy MacBook hardware to establish a Linux-based operating environment.
- Replace macOS entirely while ensuring successful system boot, user configuration, and initial OS functionality.

SCOPE:
- Creation and use of bootable installation media
- Full disk wipe and OS replacement
- Initial system configuration (user, hostname)
- Verification of successful OS installation and boot

TOOLS USED:
- Ubuntu 24.04 LTS ISO
- Balena Etcher
- SD Card (bootable media)
- MacBook Pro 2015 hardware

KEY ACTIONS PERFORMED:
- Downloaded Ubuntu 24.04 LTS ISO from official source
- Created bootable installation media using Balena Etcher
- Booted MacBook from SD card into Ubuntu installer environment
- Performed full disk wipe, removing macOS completely
- Installed Ubuntu 24.04 LTS with default GNOME desktop environment
- Configured system identity:
  - Username: johnny-nomad
  - Hostname: macbook-ubuntu-lab
- Completed installation and verified successful system boot into Ubuntu OS

KEY DECISIONS MADE:
- Selected full disk wipe to eliminate legacy OS conflicts and maximize available storage
- Chose Ubuntu 24.04 LTS for long-term support and stability
- Used SD card for installation media based on available hardware compatibility

RISKS / ISSUES ENCOUNTERED:
- Post-install performance concerns due to GNOME desktop environment on limited hardware (8GB RAM)
- System resource utilization higher than expected for lightweight lab environment
- Initial lack of system optimization for power management and performance tuning

OUTCOMES / RESULTS:
- Ubuntu 24.04 LTS successfully installed and operational
- macOS fully removed from system
- System boot confirmed stable
- Base operating environment established for further configuration and hardening

EVIDENCE / ARTIFACTS:
- System boot screen confirming Ubuntu 24.04 LTS
- Desktop environment screenshots
- System configuration details (username, hostname)
- Installation media used (SD card with Ubuntu ISO)

CURRENT STATUS:
- COMPLETE (REQUIRES POST-INSTALL OPTIMIZATION IN PHASE 3)
═══════════════════════════════════════
