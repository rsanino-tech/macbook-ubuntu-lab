#!/usr/bin/env bash

set -euo pipefail

log_file="logs/activity.log"

log_step() {
  printf '[%s] %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$1" >> "$log_file"
}

mkdir -p drafts final logs
touch "$log_file"
log_step "Created lab directories: drafts, final, logs"

printf 'Hello World\n' > drafts/letter.txt
log_step "Created drafts/letter.txt with sample content"

cp drafts/letter.txt final/final_letter.txt
log_step "Copied draft letter to final/final_letter.txt"

chmod 644 drafts/letter.txt final/final_letter.txt
log_step "Set file permissions to 644 on letter files"

log_step "File management practice script completed"
