═══════════════════════════════════════
PHASE 4 — Security Hardening
═══════════════════════════════════════

OBJECTIVE:
- Establish baseline security controls on the Ubuntu system.
- Reduce exposure to unauthorized access.

SCOPE:
- Firewall configuration
- Basic system protection measures

TOOLS USED:
- UFW (Uncomplicated Firewall)

KEY ACTIONS PERFORMED:
- Enabled UFW firewall
- Configured default rules (deny incoming, allow outgoing)
- Verified firewall status

KEY DECISIONS MADE:
- Applied default deny policy for incoming traffic
- Prioritized simplicity over advanced firewall rules

RISKS / ISSUES ENCOUNTERED:
- Risk of misconfiguration blocking legitimate traffic

OUTCOMES / RESULTS:
- Firewall active and enforcing rules
- System protected from unsolicited inbound traffic

EVIDENCE / ARTIFACTS:
- `sudo ufw status`
- Terminal confirmation output

CURRENT STATUS:
- Partial
═══════════════════════════════════════
