#!/usr/bin/env bash
# Copy one specialist template into a Hermes profile. Does not copy credentials.
set -euo pipefail
if [[ $# -lt 1 ]]; then
  echo "usage: $0 <slug> [HERMES_PROFILE_DIR]" >&2
  echo "slugs: chief va researcher reviewer implementer marketer sales designer" >&2
  exit 2
fi
slug=$1
root=$(cd "$(dirname "$0")" && pwd)
src="$root/templates/profiles/$slug"
if [[ ! -d $src ]]; then
  echo "unknown slug: $slug" >&2
  exit 2
fi
dest=${2:-"$HOME/.hermes/profiles/$slug"}
mkdir -p "$dest/skills"
cp "$src/SOUL.md" "$dest/SOUL.md"
cp "$src/AGENTS.md" "$dest/AGENTS.md"
cp -R "$src/skills/." "$dest/skills/"
echo "installed $slug -> $dest"
echo "did not copy credentials"
