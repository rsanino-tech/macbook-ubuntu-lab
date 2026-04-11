═══════════════════════════════════════
PHASE 2 — Ubuntu 22.04 LTS Clean Install
═══════════════════════════════════════

OBJECTIVE:
- Execute a full clean installation of Ubuntu 22.04 LTS, replacing macOS entirely.
- Establish a stable and controlled Linux baseline for subsequent configuration, security hardening, and performance optimization.

SCOPE:
- Bootable media creation
- System boot override and installer execution
- Full disk wipe and OS deployment
- Initial OS-level configuration

TOOLS USED:
- Ubuntu 22.04 LTS ISO (official distribution)
- Balena Etcher (bootable media creation)
- macOS Boot Selector (Option key)

KEY ACTIONS PERFORMED:
- Downloaded Ubuntu 22.04 LTS ISO from official Ubuntu source and verified integrity
- Flashed ISO to USB drive using Balena Etcher
- Rebooted MacBook and accessed boot selector via Option key
- Selected bootable USB device and launched Ubuntu installer
- Chose “Erase disk and install Ubuntu” to remove macOS completely
- Applied default partitioning scheme (ext4 filesystem)
- Configured system identity (username, hostname, password)
- Completed installation and rebooted into Ubuntu GNOME desktop environment

KEY DECISIONS MADE:
- Selected full disk wipe instead of dual-boot to eliminate partitioning complexity and potential boot conflicts
- Used default partitioning (ext4) to prioritize stability and compatibility over custom configurations
- Deferred advanced partitioning (LVM/encryption) to later phases to reduce initial install risk

RISKS / ISSUES ENCOUNTERED:
- Risk of selecting incorrect disk during installation leading to unintended data loss
- Potential USB boot compatibility issues with older MacBook hardware
- No checksum validation initially could introduce risk of corrupted ISO (mitigated by successful install outcome)

OUTCOMES / RESULTS:
- Ubuntu 22.04 LTS successfully installed as the primary operating system
- System booted cleanly into GNOME desktop environment
- Core hardware components operational (display, input devices, storage, basic drivers)
- System ready for post-install configuration and optimization phases

EVIDENCE / ARTIFACTS:
- Ubuntu installer configuration selections
- First successful boot into GNOME desktop
- Terminal verification (e.g., `lsb_release -a`, `uname -r`)

CURRENT STATUS:
- Complete
═══════════════════════════════════════
