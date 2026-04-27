---
name: perf-assessment
description: Map an engineer's achievements against the 12-skill performance framework (Craft, Strategy, Communication, Leadership & Coaching) and return a concise two-section assessment — done-well and can-be-better — each section covering all 12 skills. Trigger when the user provides achievements, accomplishments, brag-doc entries, or a self-review and asks for performance assessment, performance review, perf review, skills mapping, calibration, or feedback against these 12 skills.
---

# Performance Assessment (12-Skill Framework)

Assume the user is an engineer; **Craft — Engineering Excellence** always applies.

Take the user's achievements and produce a concise assessment in two top-level sections: **Done well** and **Can be better**. Each section contains all 12 skills as nested items.

## The 12 skills (use this exact order in both sections)

1. Craft — Provides Technical Expertise
2. Craft — Delivers Value to Customers
3. Craft — Solves Problems
4. Craft — Engineering Excellence
5. Strategy — Thinks Strategically
6. Strategy — Navigates Complexity
7. Strategy — Sees it Through
8. Communication — Communicates Effectively
9. Communication — Collaborates and Builds Relationships
10. Communication — Rallies Others
11. Leadership & Coaching — Personal Leadership
12. Leadership & Coaching — Develops Self and Others
13. Leadership & Coaching — Team Building

## Output format

```
# Done well
1. Craft — Provides Technical Expertise: <one tight line citing the specific achievement>
2. Craft — Delivers Value to Customers: ...
...
13. Leadership & Coaching — Team Building: ...

# Can be better
1. Craft — Provides Technical Expertise: <one tight line on the gap or growth edge>
2. Craft — Delivers Value to Customers: ...
...
13. Leadership & Coaching — Team Building: ...
```

## Rules

- One line per skill in each section. No sub-bullets, no padding.
- Cite the specific achievement (quote a phrase or reference it) when noting strengths — don't invent details.
- If there's no evidence for a skill in **Done well**, write `No clear evidence`. Don't stretch.
- **Can be better** must be specific and actionable (e.g., "scope was team-local; missing org-wide influence"), not generic.
- Skip clarifying questions unless the achievements are completely unparseable. The user is an engineer; that's already settled.
- End with at most 3 short summary bullets: standout strength, biggest gap, suggested focus.
