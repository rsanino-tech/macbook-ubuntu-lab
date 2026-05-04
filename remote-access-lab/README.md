# Remote Access Lab

## Purpose

This lab documents how to learn SSH remote access safely in a local Linux lab. It is designed for practicing concepts, reviewing commands, and preparing a controlled test on a system you own or have permission to manage.

## What This Lab Teaches

- SSH client vs SSH server
- Key pair authentication
- `authorized_keys`
- SSH service status
- Local test connection
- Basic troubleshooting

## Folder Structure

```text
remote-access-lab/
├── README.md
├── setup_ssh_lab.sh
├── notes/
│   └── ssh-lab-notes.md
└── logs/
    └── ssh_setup_example.log
```

## Prerequisites

- Ubuntu or Debian-based Linux
- Terminal access
- Permission to configure SSH on your own machine
- OpenSSH client/server

## Manual Lab Steps

1. Check SSH client.
2. Install OpenSSH server.
3. Check SSH service status.
4. Generate a lab SSH key.
5. Add public key to `authorized_keys`.
6. Test SSH to localhost.
7. Review logs.

## Safety Notes

- Only run this on your own machine or lab VM.
- Never expose SSH to the internet without firewall rules and hardening.
- Do not commit private keys.
- Review each command before running it.

## Troubleshooting

### Service Not Running

Check whether the SSH server service is installed and active. On many Ubuntu or Debian-based systems, the service may be named `ssh`.

### Permission Denied

Confirm the correct user account, key path, and `authorized_keys` entry are being used.

### Wrong File Permissions

SSH is strict about file permissions. The `.ssh` directory should usually be `700`, and `authorized_keys` should usually be `600`.

### Port 22 Blocked

If SSH is running but connections fail, check local firewall rules and confirm that the service is listening on port 22.

## Lab Files

- [setup_ssh_lab.sh](setup_ssh_lab.sh)
- [notes/ssh-lab-notes.md](notes/ssh-lab-notes.md)
- [logs/ssh_setup_example.log](logs/ssh_setup_example.log)
