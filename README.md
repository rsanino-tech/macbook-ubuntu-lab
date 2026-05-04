# Linux Security Lab

## Objective

This repository documents a hands-on Linux learning lab, beginning with the installation and optimization of Ubuntu on a 2015 MacBook Pro and expanding into remote access, networking, and security-focused Linux projects.

## Repository Origin

This repository originally began as a system optimization project focused on converting a 2015 MacBook Pro into a stable Ubuntu-based system. The early phase files document installation, post-install configuration, security hardening, local AI setup, performance optimization, terminal customization, and documentation integration.

## Repository Structure

```text
docs/
  hardware-specs.md

linux-setup-phases/
  phase-02-clean-install.md
  phase-03-post-install.md
  phase-04-security-hardening.md
  phase-05-local-ai-setup.md
  phase-06-performance-optimization.md
  phase-07-terminal-customization.md
  phase-08-documentation-integration.md

linux-security-labs/
  file-management-lab/
    README.md
    practice.sh
    drafts/
    final/
    logs/
  remote-access-lab/
    README.md
    setup_ssh_lab.sh
    notes/
    logs/
  network-mapping-lab/
    README.md

logs/
```

## Current Lab Expansion

- File Management Lab
- Remote Access with SSH
- Network Mapping with Nmap

## Actions Taken

- Converted the original repository structure into a cleaner lab format.
- Moved hardware documentation into [docs/hardware-specs.md](docs/hardware-specs.md).
- Moved installation and optimization phase files into the [linux-setup-phases/](linux-setup-phases/) directory.
- Preserved the existing Ubuntu installation and system optimization history.
- Added a beginner Linux file management project under [linux-security-labs/file-management-lab/](linux-security-labs/file-management-lab/).
- Added [practice.sh](linux-security-labs/file-management-lab/practice.sh) to automate file-management tasks and log actions.
- Expanded the Remote Access Lab with SSH documentation, safe example script, notes, and sample log structure.
- Organized session logs under [logs/](logs/).

## Phase Documentation

The [linux-setup-phases/](linux-setup-phases/) directory preserves the original Ubuntu installation and system optimization history. These files document the setup path that led into the broader Linux security lab.

- [Phase 2: Clean Install](linux-setup-phases/phase-02-clean-install.md): Documents the Ubuntu 24.04 LTS installation and initial system setup.
- [Phase 3: Post-Install Configuration](linux-setup-phases/phase-03-post-install.md): Covers basic system configuration after installation.
- [Phase 4: Security Hardening](linux-setup-phases/phase-04-security-hardening.md): Documents baseline firewall and security hardening steps.
- [Phase 5: Local AI Setup](linux-setup-phases/phase-05-local-ai-setup.md): Covers Ollama setup and lightweight local AI testing.
- [Phase 6: Performance Optimization](linux-setup-phases/phase-06-performance-optimization.md): Documents XFCE setup and resource-usage improvements.
- [Phase 7: Terminal Customization](linux-setup-phases/phase-07-terminal-customization.md): Covers prompt customization and terminal usability changes.
- [Phase 8: Documentation Integration](linux-setup-phases/phase-08-documentation-integration.md): Documents repository setup, GitHub usage, and project documentation work.

## Analysis

The repository now separates hardware documentation, Linux setup phase notes, Linux practice labs, and session logs. This makes the project easier to navigate while preserving the original system optimization work as the foundation for future Linux security practice.

The current structure supports a gradual learning path. It begins with system installation and stability, then expands into practical Linux administration, remote access, networking, and security-focused topics.

## Outcome

The repository is now prepared to evolve from a system optimization project into a broader Linux security lab. Existing documentation remains available, while new lab work can be added in a consistent structure.

## Key Takeaways

- Clear folder structure makes technical documentation easier to maintain.
- Preserving original project history helps show learning progression.
- Separating Linux setup phases, labs, hardware notes, and logs keeps the repository easier to scan.
- Beginner Linux skills provide a useful foundation for security and networking projects.

## Environment

System specifications for the original Ubuntu setup are documented in [docs/hardware-specs.md](docs/hardware-specs.md).

The phase documentation index is available at [linux-setup-phases/README.md](linux-setup-phases/README.md).

## Logs

Session logs capture observations, issues encountered, and decisions made throughout the project. Logs are stored in [logs/](logs/).

The master session log is available at [logs/master-session-log.md](logs/master-session-log.md).
