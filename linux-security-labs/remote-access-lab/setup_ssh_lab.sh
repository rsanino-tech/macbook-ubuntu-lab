#!/usr/bin/env bash

# Remote Access Lab safe example script.
# Run only on systems you own or have permission to manage.
# Do not commit private keys.
#
# This script is written for lab documentation and review. Read each section
# before running it on a real Ubuntu or Debian-based lab system.

set -euo pipefail

LOG_DIR="logs"
LOG_FILE="${LOG_DIR}/ssh_setup_example.log"
SSH_DIR="${HOME}/.ssh"
LAB_KEY="${SSH_DIR}/lab_rsa"
LAB_PUBLIC_KEY="${LAB_KEY}.pub"
AUTHORIZED_KEYS="${SSH_DIR}/authorized_keys"

log_step() {
  mkdir -p "${LOG_DIR}"
  printf '[%s] %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$1" >> "${LOG_FILE}"
}

log_step "Remote Access Lab script started"

# Check whether the SSH client is available.
if command -v ssh >/dev/null 2>&1; then
  log_step "SSH client found"
else
  log_step "SSH client not found"
fi

# Check whether an SSH server service appears to be available.
if command -v systemctl >/dev/null 2>&1; then
  if systemctl list-unit-files ssh.service >/dev/null 2>&1; then
    log_step "ssh.service appears available"
  elif systemctl list-unit-files sshd.service >/dev/null 2>&1; then
    log_step "sshd.service appears available"
  else
    log_step "No SSH server service detected through systemctl"
  fi
else
  log_step "systemctl not available, service status not checked"
fi

# Installation command is intentionally commented out for safety.
# Review before running on a lab machine:
# sudo apt update
# sudo apt install openssh-server
log_step "OpenSSH server install commands documented but not executed"

# Create ~/.ssh if needed and set directory permissions.
mkdir -p "${SSH_DIR}"
chmod 700 "${SSH_DIR}"
log_step "Ensured ~/.ssh exists with 700 permissions"

# Generate a lab key only if it does not already exist.
# The actual key generation command is shown below and guarded to avoid
# overwriting an existing key.
if [[ -e "${LAB_KEY}" || -e "${LAB_PUBLIC_KEY}" ]]; then
  log_step "Lab key already exists, skipping key generation"
else
  log_step "Lab key does not exist; key generation command is ready for review"
  # ssh-keygen -t rsa -b 4096 -f "${LAB_KEY}" -C "remote-access-lab" -N ""
fi

# Add the lab public key to authorized_keys only if the public key exists.
if [[ -f "${LAB_PUBLIC_KEY}" ]]; then
  touch "${AUTHORIZED_KEYS}"
  if grep -qxF "$(cat "${LAB_PUBLIC_KEY}")" "${AUTHORIZED_KEYS}"; then
    log_step "Public key already present in authorized_keys"
  else
    cat "${LAB_PUBLIC_KEY}" >> "${AUTHORIZED_KEYS}"
    log_step "Appended lab public key to authorized_keys"
  fi
  chmod 600 "${AUTHORIZED_KEYS}"
  log_step "Set authorized_keys permissions to 600"
else
  log_step "Lab public key not found, authorized_keys not modified"
fi

# Localhost SSH test command for review.
# Run only after confirming SSH server setup:
# ssh -i "${LAB_KEY}" localhost
log_step "Localhost SSH test command documented"

log_step "Remote Access Lab script completed"
