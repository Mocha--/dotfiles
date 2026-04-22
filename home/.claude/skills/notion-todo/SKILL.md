---
name: notion-todo
description: Create a todo in the user's Notion "🚀 Todos" database via the Notion MCP. Trigger when the user asks to add/create a todo, task, or item in Notion (e.g. "add to my notion todo list", "create a notion todo", "add todo to notion").
---

# Notion Todo

Creates a new row in the user's Notion "🚀 Todos" database using the Notion MCP server.

## Target database

- Database title: 🚀 Todos (parent page: Personal)
- Data source ID: `6c16bbab-4db1-4f12-8525-ca7abb57bf03`
- Create with `mcp__notion__notion-create-pages`, parent `{"type": "data_source_id", "data_source_id": "6c16bbab-4db1-4f12-8525-ca7abb57bf03"}`

If the data source ID above stops working, re-discover it with `mcp__notion__notion-search` for "Todos" then `mcp__notion__notion-fetch` on the database and update this file.

## Schema

- `Task` (title) — required, the todo text
- `Status` (select) — one of `In Progress`, `To Do`, `Done`, `Dropped`
- `Priority` (select) — one of `High`, `Medium`, `Low`
- `Category` (multi_select) — zero or more of `Personal`, `Setup`, `Tooling`, `AI/Claude`, `Learning`, `Process`. Pass as a JSON-encoded string, e.g. `"[\"Learning\"]"`.
- `Due Date` (date), `Link` (url), `Notes` (text) — optional, set only if the user provides them

## Defaults

- `Status` defaults to `To Do` unless the user says otherwise.
- `Priority` defaults to `Medium` unless the user says otherwise.
- `Category` is inferred from the task text. Pick the one (or few) that fit best:
  - `AI/Claude` — Claude Code, MCP, agents, LLMs, prompts, OMC
  - `Tooling` — CLIs, editors, dotfiles, shells, dev tools
  - `Setup` — configuring a machine, installing, environment
  - `Learning` — courses, reading, tutorials, study
  - `Process` — workflows, rituals, docs, team process
  - `Personal` — life/admin that doesn't fit the others
  If nothing fits cleanly, omit `Category`.

## Behavior

1. Take the user's task text as `Task`.
2. Apply the defaults above; override with anything the user specified.
3. Infer `Category` from the task text.
4. Call `mcp__notion__notion-create-pages` with the parent above and a single page in `pages`.
5. Reply with a one-line confirmation and the returned page URL. Don't restate the defaults unless the user asked about them.

## Example call

```
mcp__notion__notion-create-pages(
  parent={"type": "data_source_id", "data_source_id": "6c16bbab-4db1-4f12-8525-ca7abb57bf03"},
  pages=[{"properties": {
    "Task": "learn Canva design school",
    "Status": "To Do",
    "Priority": "Medium",
    "Category": "[\"Learning\"]"
  }}]
)
```
