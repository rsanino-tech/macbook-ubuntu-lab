# SSH Lab Notes

## What SSH Is

SSH stands for Secure Shell. It is a network protocol used to securely connect to another system over a network. In a Linux lab, SSH is commonly used to practice remote terminal access.

## Difference Between `ssh` and `sshd`

`ssh` is the client command used to start a connection to another system.

`sshd` is the SSH server daemon that listens for incoming SSH connections.

Both sides matter. The client starts the connection, and the server must be installed, running, and configured to accept it.

## Public and Private Key Pair

An SSH key pair contains two related files:

- Private key: kept secret on the client system
- Public key: shared with the server system

The private key should never be committed to a repository or shared publicly.

## What `authorized_keys` Does

The `authorized_keys` file lives inside a user's `.ssh` directory on the server side. It lists public keys that are allowed to authenticate as that user.

If a public key is not listed in `authorized_keys`, the matching private key will not be accepted for that account.

## Why File Permissions Matter

SSH checks file permissions because loose permissions can expose keys or allow unsafe changes. Common permissions are:

- `~/.ssh`: `700`
- `authorized_keys`: `600`
- Private keys: `600`

Strict permissions help protect the account and prevent SSH from rejecting files as unsafe.

## Beginner Explanation of Port 22

Port 22 is the default network port used by SSH. When an SSH server is running with default settings, it usually listens on port 22 for incoming connections.

If port 22 is blocked by a firewall or the SSH service is not listening, SSH connections may fail even if the client command is correct.

## What to Document After Running the Lab

- Commands used
- Errors seen
- Service status
- What worked
- What failed
- What was learned
