# COG Weekly Check-in Playbook

For filing, source preservation, discovery and lifecycle, follow `.claude/skills/weekly-checkin/SKILL.md`.

Include relevant domain notes, project plans/resources and knowledge/booklets; exclude pending input and `.sources/` originals. Use project lifecycle and `content_status` for active/current views: exclude `outdated` as current evidence and follow `superseded_by` for `superseded` notes. Missing status is unassessed.

Use the profile to identify projects, but use `project_status` on the project overview to decide activity. Exclude completed/abandoned projects from active review even if the profile lists them as active; retain historical context. Clarify missing or conflicting status.

## Goal
Comprehensive weekly review integrating insights across all domains with pattern recognition.

## Pre-Flight
1. Read `config/MY-PROFILE.md` for name, role, projects, agent_mode
2. Scan recent content from the past week:
   - `02-personal/braindumps/` (personal domain)
   - `03-professional/braindumps/` (professional domain)
   - `04-projects/*/braindumps/` (each active project)
   - `01-updates/briefs/` (daily briefs from this week)

## Steps

### 1. Gather Context
Read all braindumps, briefs, and notes from the past 7 days.

### 2. Guide Reflection
Ask the user conversational reflection questions:
- How was your week overall? (energy, mood, productivity)
- What went well? What was challenging?
- Any breakthroughs or insights?

### 3. Domain Review
For each active domain, summarize:
- **Personal**: Wellness, growth, personal goals
- **Professional**: Accomplishments, challenges, learnings
- **Projects** (each): Progress, blockers, next steps

### 4. Pattern Recognition
Identify patterns across the week:
- Recurring themes across braindumps
- Cross-domain connections
- Energy and productivity patterns
- Evolving priorities

### 5. Forward Planning
Help set priorities for next week:
- Top 3 priorities
- Action items with dates: `- [ ] Task 📅 YYYY-MM-DD`
- Carry-over items from this week

### 6. Generate Check-in
Save to `01-updates/checkins/weekly-checkin-YYYY-MM-DD.md` with:
```yaml
type: weekly-checkin
created: YYYY-MM-DD
week_rating: N/10
domains_reviewed: [list]
tags: ["#weekly-checkin", "#reflection"]
```
