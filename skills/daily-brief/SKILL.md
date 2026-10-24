---
name: daily-brief
description: Produce a sourced daily brief across personal interests, professional developments and business intelligence. Use for daily briefs, news updates and morning briefings.
roles: [all]
integrations: [web-search]
---

# Daily brief

Help the user learn, stay informed and recognise developments that affect their work. An article may serve all three purposes.

Follow the writing preferences in `config/MY-PROFILE.md`.

Resolve paths from the vault root. Save the brief to `01-updates/briefs/daily-brief-YYYY-MM-DD.md`.

## Establish context

Read `config/MY-PROFILE.md`, `config/MY-INTERESTS.md`, and `03-professional/COMPETITIVE-WATCHLIST.md` if present. Ask for missing interests rather than inventing them. Read relevant active-project overviews and saved notes when assessing a connection. Completed projects are historical; follow `superseded_by` and do not treat outdated notes as current evidence.

Read the three latest briefs in `01-updates/briefs/`. Deduplicate by URLs and story meaning; include repeats only for a material update, labelled with the earlier coverage date. Obtain the actual current timestamp in the user's timezone.

If `agent_mode: team`, use two independent discovery passes before selection. Give a fresh researcher the full profile, interests, preferred source links, relevant work context, date and prior-brief coverage, but not your candidate list. Research independently before comparing findings. Otherwise repeat discovery using different news sites. Keep concise records of queries or listing URLs, retrieved titles, dates, article URLs and access limits.

## Find worthwhile material

Rank stories by relevance to the user and the scale of their demonstrated significance or consequences. Novelty alone does not establish priority. A promising method or possible future application is not by itself High Impact. Do not assume one interest has priority; put the strongest stories first, regardless of topic.

Include a story only if a second credible source substantively discusses the primary source. A copy is not enough. Use the discussion to assess the contribution, context and consequences, not just to count sources. Additional coverage establishes neither importance nor independent confirmation.

Inspect each preferred source's recent dated publications. If its homepage lacks usable dates, follow relevant topical sections or dated archives and use valid `site:domain/path` searches. Recover truncated results through smaller calls or further page ranges. Inspect the current listing beyond featured articles. Search interests beyond preferred sources; for each distinct geographic interest, inspect a broad recent regional news index or search-result listing before pursuing individual leads. Respect topic and geographic preferences. Gather candidates before selecting. For broad interests, choose stories that explain an important question, reveal an accessible discovery, or change understanding beyond a specialist task. Specialist findings and operational changes need a specific match to the user's stated interests, responsibilities or active work. A broad field label, journal prestige or generic transferable lesson is insufficient. Personal learning needs no business benefit. Include developments materially affecting the user's work.

Verify publication within the last seven days. A new explanation of older research can qualify; distinguish publication, event and research dates. Reconcile discovery against the original interests and preferred sources. Assess strong leads from either pass and resolve accessible gaps before selection. Partial listings and a single result trail remain incomplete discovery; disclose blocked access. Do not treat distinct developments in one topic as duplicates or impose topic quotas.

## Establish what the sources support

Read the primary source where accessible; otherwise use substantive reporting and disclose material access limits. Limit the summary to material actually read; do not summarise from search snippets alone. Before drafting, note the main finding and any results that change its meaning. For key figures, record what was measured, the group or system, the time period and the limits. Check dates and methods. Attribute announcements and claims; distinguish evidence, interpretation and your own analysis.

Within an eligible story, a claim may rely on one credible source when clearly attributed. Seek independent evidence for disputed claims, broad generalisations and consequential recommendations. A copy of a report is not independent evidence. State uncertainty and unresolved disagreement; narrow or omit unsupported claims. Use source tiers consistently: 1 = authoritative primary material or major reporting; 2 = established specialist reporting/analysis; 3 = informal or unverified leads. State what the evidence establishes and what remains unknown. Do not assign confidence ratings or percentages.

## Explain the article and its consequences

Lead with the main finding or argument, decisive evidence and limitations that change its meaning. Omit details that do not help explain the main finding. Explain what is worth understanding or discovering; broad interests need no invented motivation. Read the relevant note before linking an article to a saved hypothesis, and distinguish illustration from evidence for it.

For material business developments, identify the affected role, project, market or watchlist relationship and explain how the reported change affects it. Consider customers, competition, regulation, technology, investment, talent and partnerships where relevant. Assess opportunities, threats, trade-offs and timing. Connect effects to evidence and state assumptions; do not infer organisational plans from a job title. Recommend a response, investigation or monitoring only when justified, with real deadlines and dependencies where known. Across stories, synthesise supported patterns and priorities for the executive summary, opportunities and risks; label tentative connections rather than presenting coincidence as a trend.

## Review and deliver

Before saving, check each item and the executive summary against the sources, using these notes. Check what figures describe and whether any omitted finding changes the conclusion. Separately check whether each inclusion reason establishes value beyond a topic match, and whether personal/business implications follow from the evidence. Compare the strongest omitted candidates with the weakest selected stories across topics. Correct failures before delivery.

Keep the template's headings and item format. Put the highest-ranked stories under High Impact News, regardless of topic. Use other sections only when their headings fit the content; put remaining selected stories under Further Reading. Keep Executive Summary, Verification Report with all its subsections, and Complete Sources. Omit unused story sections and inapplicable project/action fields; do not write empty-section notices or invent business relevance. Populate metadata, source tiers, counts and verification statements from actual checks. Do not copy default assurances. Retain the template footer when its checks are complete; otherwise state which checks were not completed. Disclose coverage gaps briefly and link the saved brief for review.

```markdown
---
type: "daily-brief"
domain: "shared"
date: "YYYY-MM-DD"
created: "YYYY-MM-DD HH:MM"
sources_verified: true
news_age_verified: true
tags: ["#daily-brief", "#news", "#strategic-intelligence"]
interests: ["interest1", "interest2"]
projects_referenced: ["project1"]
items_count: [number]
dedup_urls: ["https://primary-source-url-for-each-story-covered"]
---

# Daily Brief - [Date]

**Good [morning/afternoon], [Name]!**

## Executive Summary
[2-3 sentences highlighting the most important developments across all your interest areas]

---

## High Impact News

### [News Item 1 - Direct Impact]
[Detailed summary of the main findings and supporting evidence]

**Relevance:** [Supported connection to the user, if any]

**Impact Assessment:**
- **Projects Affected:** [Which of your projects this impacts]
- **Potential Effects:** [Specific implications]
- **Action Suggested:** [Recommended response or follow-up]

**Sources:**
- [Source Name 1] (Tier [1/2/3]) - [Publication Date] - [Link]
- [Source Name 2] (Tier [1/2/3]) - [Publication Date] - [Link]

**Evidence limits:** [What the sources establish and what remains unknown. State specific limits that affect interpretation.]

---

### [News Item 2 - Direct Impact]
[Same structure as above]

---

## Strategic Developments

### [News Item 3 - Strategic Impact]
[Detailed summary of the main findings and supporting evidence]

**Relevance:** [Why this matters strategically, where supported]

**Strategic Implications:**
- [Implication 1]
- [Implication 2]
- [Implication 3]

**Sources:**
- [Source listings with credibility tiers and links]

**Evidence limits:** [What the sources establish and what remains unknown. State specific limits that affect interpretation.]

---

## Market Intelligence

### [News Item 4 - Market Trends]
[Detailed summary of the main findings and supporting evidence]

**Relevance:** [Why this market trend matters, where supported]

**Market Impact:**
- [Impact on target customers]
- [Industry trends]
- [Investment patterns]

**Sources:**
- [Source listings with credibility tiers and links]

**Evidence limits:** [What the sources establish and what remains unknown. State specific limits that affect interpretation.]

---

## Technology Watch

### [News Item 5 - Tech Developments]
[Detailed summary of the main findings and supporting evidence]

**Relevance:** [Why this technology matters, where supported]

**Technology Implications:**
- [Impact on tech stack]
- [New tools or platforms]
- [Emerging technologies]

**Sources:**
- [Source listings with credibility tiers and links]

**Evidence limits:** [What the sources establish and what remains unknown. State specific limits that affect interpretation.]

---

## Competitive Landscape

### [Competitor/Company Name - From Watchlist]
**Recent Activity:**

[Summary of competitive intelligence gathered]

**Competitive Implications:**
- [What this means for your projects]
- [Opportunities or threats]
- [Recommended responses]

**Sources:**
- [Source listings with credibility tiers and links]

**Evidence limits:** [What the sources establish and what remains unknown. State specific limits that affect interpretation.]

---

## Further Reading

[Optional: other selected stories, using the same summary, relevance, sources and evidence limits fields.]

---

## Opportunities & Recommendations

**Optional:** Recommend actions supported by the analysis. Use dates only when supplied or event-driven.

### Immediate Actions (Today/This Week)
- [ ] [Supported action; date only if warranted]
- [ ] [Supported action; date only if warranted]
- [ ] [Supported action; date only if warranted]

### Research Needed
- [Area 1 requiring deeper investigation]
- [Area 2 to monitor closely]

### People to Inform/Consult
- [Stakeholder 1]: [About what]
- [Stakeholder 2]: [About what]

---

## Risks & Threats

### Active Threats
- **Threat 1:** [Description and mitigation approach]
- **Threat 2:** [Description and mitigation approach]

### Emerging Risks to Monitor
- [Risk 1 to watch]
- [Risk 2 to watch]

---

## Verification Report

### Source Analysis
- **Tier 1 Sources:** [count] - [list main ones]
- **Tier 2 Sources:** [count] - [list main ones]
- **Cross-References Performed:** [number]

### Fact-Checking Results
- **Verified Claims:** [count]
- **Unverified Claims:** [count with explanation if any]
- **Conflicting Information:** [count with resolution approach if any]

### Freshness Verification
- [Confirm that every included article has a verified publication date within the last seven days.]
- Publication date range: [Oldest date] to [Newest date]

### Evidence limits
[Summarise material limits across the brief without repeating each item.]

---

## Complete Sources

### Strategic News
1. [Full source citation with link]
2. [Full source citation with link]

### Market Intelligence
1. [Full source citation with link]
2. [Full source citation with link]

### Technology Watch
1. [Full source citation with link]
2. [Full source citation with link]

### Competitive Intelligence
1. [Full source citation with link]
2. [Full source citation with link]

---

*Curated by COG News Curator | All news verified within 7-day freshness window | Sources cross-referenced for accuracy*
```
