#!/usr/bin/env bash
set -euo pipefail

repo="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
target="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"
self="$(basename "${BASH_SOURCE[0]}")"

backup_unless_symlink() {
  [[ -e "$1" && ! -L "$1" ]] && mv "$1" "$1.bak.$(date +%s)" && echo "backed up $1"
  return 0
}

link() {
  local dest="$target/$(basename "$1")"
  backup_unless_symlink "$dest"
  ln -sfn "$1" "$dest"
  echo "linked $dest -> $1"
}

mkdir -p "$target"
for entry in "$repo"/*; do
  [[ "$(basename "$entry")" == "$self" ]] || link "$entry"
done
