#!/usr/bin/env bash
# build-agent-plugin.sh — regenerate the Agent Plugins standard surface.
#
# COG conforms to the Agent Plugins specification 1.0.0 (https://agent-plugins.org):
# a root plugin.json manifest plus a root skills/ directory. The canonical skills
# live in .claude/skills/ (that is what the distill and update flows write); this
# script mirrors them to skills/ so any standard-conformant client can load COG
# as a plugin. Run it after adding or editing any skill, then commit the result.
#
# Manifest version fields are generated from COG-VERSION; never edit them directly.
# skills/ is GENERATED — never edit it by hand. The packaging validator
# (scripts/validate-agent-surface.sh) fails if the two trees drift.

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

if [[ ! -d .claude/skills ]]; then
  echo "✗ .claude/skills not found — run from a COG checkout" >&2
  exit 1
fi

python3 - <<'PYVERSION'
import json
import re
from pathlib import Path

version = Path('COG-VERSION').read_text().strip()
if not re.fullmatch(r'(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)(?:-[0-9A-Za-z.-]+)?(?:\+[0-9A-Za-z.-]+)?', version):
    raise SystemExit('Invalid COG-VERSION')
for name in ('plugin.json', '.claude-plugin/plugin.json', '.cursor-plugin/plugin.json', 'marketplace-entry.json'):
    path = Path(name)
    data = json.loads(path.read_text())
    if data.get('version') != version:
        data['version'] = version
        path.write_text(json.dumps(data, indent=2, ensure_ascii=False) + '\n')
print(f'✓ Generated manifest versions from COG-VERSION ({version})')
PYVERSION

rm -rf skills
cp -R .claude/skills skills

count=$(find skills -name SKILL.md | wc -l | tr -d ' ')
echo "✓ Mirrored .claude/skills → skills/ ($count skills, Agent Plugins spec 1.0.0)"
