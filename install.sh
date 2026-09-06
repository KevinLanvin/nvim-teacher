#!/usr/bin/env bash
# Restores the exact nvim config tracked in this repo's nvim-config/ folder
# by symlinking it to ~/.config/nvim, then lets lazy.nvim install the exact
# pinned plugin versions from lazy-lock.json on first launch.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$REPO_DIR/nvim-config"
DST="$HOME/.config/nvim"

if [ ! -d "$SRC" ]; then
  echo "error: $SRC not found" >&2
  exit 1
fi

if [ -L "$DST" ] && [ "$(readlink -f "$DST")" = "$(readlink -f "$SRC")" ]; then
  echo "$DST already points at $SRC, nothing to do."
else
  if [ -e "$DST" ] || [ -L "$DST" ]; then
    BACKUP="$DST.bak.$(date +%Y%m%d%H%M%S)"
    echo "Existing $DST found, backing it up to $BACKUP"
    mv "$DST" "$BACKUP"
  fi
  ln -s "$SRC" "$DST"
  echo "Linked $DST -> $SRC"
fi

echo "Launch nvim now — lazy.nvim will install every plugin pinned in lazy-lock.json automatically."
