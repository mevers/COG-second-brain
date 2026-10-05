# COG Knowledge Consolidation Playbook

For filing, source preservation, discovery and lifecycle, follow `.claude/skills/knowledge-consolidation/SKILL.md`.

Include relevant domain notes, project plans/resources and knowledge/booklets; exclude pending input and `.sources/` originals. Use project lifecycle and `content_status` for active/current views: exclude `outdated` as current evidence and follow `superseded_by` for `superseded` notes. Missing status is unassessed.

## Goal
Transform scattered insights from braindumps, briefs, and check-ins into coherent frameworks and knowledge documents.

## Pre-Flight
1. Read `config/MY-PROFILE.md` for context and agent_mode
2. Identify last consolidation date (check `05-knowledge/consolidated/` for most recent report)

## Steps

### 1. Scan Vault
Gather all unprocessed content since last consolidation:
- `02-personal/braindumps/`
- `03-professional/braindumps/`
- `04-projects/*/braindumps/`
- `01-updates/briefs/`
- `01-updates/checkins/`

### 2. Pattern Recognition
Apply multi-layer analysis:
- **Frequency patterns**: Topics that appear 3+ times
- **Temporal patterns**: How thinking evolves over time
- **Domain correlations**: Insights that span personal + professional
- **Contradictions**: Where thinking conflicts across notes

### 3. Framework Building
For significant patterns, create or update frameworks:
- Name the pattern/framework
- Define its components
- Provide actionable application guidelines
- Link to source braindumps

### 4. Generate Outputs

**Frameworks** → `05-knowledge/consolidated/[framework-name]-framework.md`
```yaml
type: framework
created: YYYY-MM-DD
sources: [list of source braindumps]
tags: ["#framework", "#knowledge"]
```

**Patterns** → `05-knowledge/patterns/pattern-[name].md`

**Timeline** → `05-knowledge/timeline/[topic]-evolution-YYYY-MM.md`

**Report** → `05-knowledge/consolidated/consolidation-YYYY-MM-DD.md`

### 5. Mark Processed
Add `consolidated_in` and `consolidated_date` to notes used in synthesis, preserving existing backlinks. Retain superseded guidance in place with `content_status: superseded` and `superseded_by`. If obsolete with no replacement, use `content_status: outdated` without `superseded_by`.
