---
name: "cog-onboarding"
displayName: "COG Onboarding"
description: "Personalize COG second brain for your workflow - creates profile, interests, and watchlist files with guided setup"
keywords: ["onboarding", "setup COG", "setup profile", "get started", "configure COG", "personalize", "my profile"]
---

# COG Onboarding Power

Welcome new users and collect essential information to personalize their COG (Cognition + Obsidian + Git) second brain experience.

For filing, source preservation, discovery and lifecycle, follow `.claude/skills/onboarding/SKILL.md`.

## When This Power Activates

- User mentions "onboarding", "setup", or "get started"
- User is new and hasn't completed onboarding yet
- User wants to update their profile or add new projects

## Core Principle: Smart, Low-Friction Onboarding

**The onboarding MUST feel like a natural conversation, NOT a form.**

- Ask open-ended questions, never numbered option lists
- Ask as few questions as possible - infer from natural responses
- Never ask redundant questions - if info was already given, don't re-ask
- Parse intelligently - extract name, role, interests, projects, watchlist from a single paragraph if the user provides them
- Confirm your interpretation rather than asking the question fresh

## Onboarding Steps

### 1. Check for Existing Profile

Look for `config/MY-PROFILE.md` in the vault:
- If exists: Ask "What would you like to update? Just tell me what needs changing." (no numbered menus)
- If not found: Proceed with full onboarding

### 2. Single Open-Ended Prompt

Instead of asking 6 sequential questions, start with ONE open-ended message:

```
Welcome to COG - your self-evolving second brain!

Tell me a bit about yourself - your name, what you do, and what topics you're most interested in staying sharp on. Feel free to share as much or as little as you'd like.
```

### 3. Intelligent Extraction

From the user's response, extract:
- **Name** (required) - from self-introduction patterns
- **Role** (required) - from job/activity mentions
- **Interests** (required, 2-3 minimum) - from topic mentions, also infer from role
- **News Sources** (optional) - from source mentions, skip if not mentioned
- **Projects** (optional) - from project mentions, skip if not mentioned
- **Competitive Watch** (optional) - from company/person mentions, skip if not mentioned

### 4. Smart Follow-Up (Only If Needed)

Only ask a follow-up if required fields (name, role, interests) are missing. Ask ONE question covering all gaps. Never ask about optional fields the user didn't mention.

### 5. Confirm and Create

Show a brief summary of what was captured. Also ask about agent mode:
- **Solo mode** (default): Handle everything in a single conversation
- **Agent team mode**: Delegate to specialist sub-agents for deeper results (works best with Claude Code)

Default to `solo` if user doesn't express a preference. Store as `agent_mode: solo|team` in MY-PROFILE.md frontmatter.

### 6. Generate Profile Documents

Create these markdown files:

**`config/MY-PROFILE.md`** - Basic profile with name, role, active projects
**`config/MY-INTERESTS.md`** - Topics and preferred news sources
**`03-professional/COMPETITIVE-WATCHLIST.md`** - Only if they mentioned competitors
**`04-projects/[project-slug]/PROJECT-OVERVIEW.md`** - Only if they mentioned projects

### 7. Create Directory Structure

```
config/
00-inbox/
01-updates/briefs/, checkins/
02-personal/braindumps/
03-professional/braindumps/
04-projects/[project-slug]/PROJECT-OVERVIEW.md (create subfolders when used)
05-knowledge/consolidated/, patterns/, timeline/, booklets/
```

### 8. Generate Welcome Guide and Wrap Up

Create `config/WELCOME-TO-COG.md` with quick start instructions. Suggest a natural next action (braindump or daily brief) without presenting a numbered menu.

Also mention that COG can be kept up to date: "When new COG versions are released, run `/update-cog` or `./cog-update.sh` to safely update skills and docs without touching your personal content."

## Success Criteria

- MY-PROFILE.md created in config/
- MY-INTERESTS.md created in config/
- Project directories created if applicable
- Welcome guide created
- User understands next steps

## Configuration Philosophy

All configuration is stored as readable markdown files:
- Human-readable and editable
- Version controlled with Git
- Searchable in Obsidian
- Linkable from other notes

**Run this first** if you're new to COG.
