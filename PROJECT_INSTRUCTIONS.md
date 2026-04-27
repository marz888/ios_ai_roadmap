# 📋 Project Instructions — Learning Roadmap Generator

This document tells Claude everything it needs to know to generate a new learning schedule from `roadmap_template.html`. Share this file at the start of every new schedule conversation.

---

## What this project is

A personal learning roadmap webapp — a single HTML file with:
- Day-by-day task schedule loaded from Supabase
- Cross-device progress sync (Mac + iPhone)
- Dynamic scheduling — completed tasks pull the next task forward
- No work day feature — skip a day and tasks push forward automatically
- Claude-powered subject generator — add new subjects with AI-generated tasks
- Settings, help panel, changelog, version tracking

**Tech stack:** Vanilla HTML/CSS/JS · Supabase (PostgreSQL) · Anthropic API · GitHub Pages

---

## Files in this project

| File | Purpose |
|---|---|
| `roadmap_template.html` | Blank webapp — all features, zero personal data |
| `ios_learning_roadmap_v3.html` | Live iOS/AI roadmap (example of a completed schedule) |
| `seed_tasks.sql` | Example SQL that populates the Supabase `ios_ai_tasks` table |
| `PROJECT_INSTRUCTIONS.md` | This file |
| `README.md` | GitHub repo documentation |

---

## How to generate a new schedule

### Step 1 — Tell Claude what you want

Start a new conversation and say something like:

> *"Using `roadmap_template.html` from this project, build me a 4-week Spanish learning roadmap. I can do 2 hours per day, 5 days a week. I already speak French so I have some romance language background."*

Or more simply:

> *"Create a fitness training schedule using the template — 1 hour/day, 6 days/week, 8 weeks, for someone who is a complete beginner."*

---

### Step 2 — What Claude will do

Claude will:

1. **Set `ROADMAP_NAME`** — e.g. `'Spanish Learning'` or `'Fitness Plan'`
2. **Set `SUPABASE_USER`** — e.g. `'spanish'` or `'fitness'` (unique per roadmap, same Supabase project)
3. **Generate the task data** — a full `seed_tasks.sql` file with every day/week/task
4. **Keep your Supabase credentials** — you paste them in once, they stay
5. **Bump the version** to `1.00` and set up a clean changelog
6. **Give you two files:** the updated HTML and the SQL seed file

---

### Step 3 — Deploy

1. Run `seed_tasks.sql` in **Supabase → SQL Editor**
2. Push the HTML to GitHub
3. Open the app — the **Setup Wizard** appears asking for start date, days/week, and duration
4. Fill it in and your schedule is live

---

## Supabase setup (one-time, shared across all roadmaps)

The same Supabase project works for every roadmap. Each roadmap is separated by `SUPABASE_USER` — no new tables needed.

### Required tables (run once, reuse forever)

```sql
-- Tasks table (one per roadmap, separated by phase_id)
CREATE TABLE IF NOT EXISTS ios_ai_tasks (
  id             text PRIMARY KEY,
  phase_id       integer NOT NULL,
  phase_title    text,
  phase_color    text,
  week_num       integer,
  week_date_from text,
  week_date_to   text,
  day_num        integer,
  day_date       text,
  day_label      text,
  time_slot      text,
  task_text      text,
  resource       text,
  url            text,
  tag            text,
  sort_order     integer DEFAULT 0,
  created_at     timestamptz DEFAULT now()
);

-- Progress table (completions, notes, no-work days — all roadmaps)
CREATE TABLE IF NOT EXISTS ios_ai_progress (
  user_id      text,
  task_id      text,
  done         boolean DEFAULT false,
  note         varchar(30) DEFAULT '',
  completed_at timestamptz,
  updated_at   timestamptz DEFAULT now(),
  PRIMARY KEY (user_id, task_id)
);

-- Custom subjects (Claude-generated curricula)
CREATE TABLE IF NOT EXISTS ios_ai_subjects (
  id             text PRIMARY KEY,
  user_id        text NOT NULL,
  name           text,
  tag            text,
  color          text,
  hours_per_week integer,
  start_week     integer,
  tasks_json     text,
  sort_order     integer DEFAULT 0,
  created_at     timestamptz DEFAULT now()
);

-- Changelog
CREATE TABLE IF NOT EXISTS ios_ai_changelog (
  version    text PRIMARY KEY,
  date       text,
  changes_json text,
  updated_at timestamptz DEFAULT now()
);

-- Disable RLS on all tables (task/progress data is not sensitive)
ALTER TABLE ios_ai_tasks     DISABLE ROW LEVEL SECURITY;
ALTER TABLE ios_ai_progress  DISABLE ROW LEVEL SECURITY;
ALTER TABLE ios_ai_subjects  DISABLE ROW LEVEL SECURITY;
ALTER TABLE ios_ai_changelog DISABLE ROW LEVEL SECURITY;
```

---

## Key constants Claude must set in every new schedule

```javascript
const SUPABASE_URL  = 'YOUR_SUPABASE_URL';     // ← same for all roadmaps
const SUPABASE_KEY  = 'YOUR_SUPABASE_ANON_KEY'; // ← same for all roadmaps
const SUPABASE_USER = 'spanish';                // ← UNIQUE per roadmap
const APP_VERSION   = '1.00';                   // ← always starts at 1.00
const ROADMAP_NAME  = 'Spanish Learning';       // ← displayed everywhere in the app
```

---

## Task data format (for the SQL seed file)

Each task row in `ios_ai_tasks` must have:

| Column | Example | Notes |
|---|---|---|
| `id` | `'1-1-1'` | Unique, used to track progress — never change once set |
| `phase_id` | `1` | Phase number (1, 2, 3...) |
| `phase_title` | `'Phase 1 — Foundations'` | Displayed as week group header |
| `phase_color` | `'#6366f1'` | Hex colour for the phase dot |
| `week_num` | `1` | Week number within the phase |
| `week_date_from` | `'1 Jun 2026'` | Display only |
| `week_date_to` | `'5 Jun 2026'` | Display only |
| `day_num` | `1` | Day number (1–5 for Mon–Fri) |
| `day_date` | `'Mon 1 Jun 2026'` | Full date string shown in UI |
| `day_label` | `'Day 1'` | Short label |
| `time_slot` | `'Morning 30min'` | Time label shown on task card |
| `task_text` | `'Learn Spanish greetings...'` | Main task description |
| `resource` | `'Duolingo'` | Resource name — shown as link |
| `url` | `'https://duolingo.com'` | Clickable link on task card |
| `tag` | `'Spanish'` | Category — drives filter chips |
| `sort_order` | `1` | Ascending integer — determines display order |

---

## Versioning rules

- Every modification to a schedule bumps the **minor version**: `1.00 → 1.01 → 1.02`
- Every new schedule generated from the template starts at `1.00`
- Major redesigns bump the major version: `1.x → 2.00`
- The version appears in the browser tab title: `Spanish Learning (1.02)`
- Every version bump must include a CHANGELOG entry describing what changed
- The version in the HTML `<title>` tag must always match `APP_VERSION`

---

## Modification rules

When modifying an existing schedule Claude must always:

1. ✅ Bump `APP_VERSION` by `0.01`
2. ✅ Update the `<title>` tag to match
3. ✅ Add a new entry to `CHANGELOG` with the date and bullet points
4. ✅ Preserve all existing task IDs — never change an ID once it exists in the database
5. ✅ Never hardcode Supabase credentials in any response — keep placeholders or use existing values
6. ✅ Produce the complete updated HTML file as output

---

## Schedule generation guidelines

When generating tasks Claude should:

- **4 tasks per day** — one per time slot (e.g. Morning, Mid-morning, Afternoon, Evening)
- **5 days per week** unless user specifies otherwise
- **Progressive structure** — each week builds on the previous
- **Real resources** — actual URLs to free tutorials, YouTube channels, official docs
- **Specific task descriptions** — not generic like "study lesson 3" but "Learn past tense conjugation: -er and -ir verbs, practice 20 sentences"
- **Mix of task types** — theory, practice, project work, review
- **Tag consistency** — use one main tag per subject (e.g. `Spanish`, `Fitness`, `Cooking`) plus `Review` for review days

---

## What NOT to do

- ❌ Do not hardcode Supabase credentials in the HTML
- ❌ Do not change existing task IDs (breaks progress tracking)
- ❌ Do not remove the setup wizard, help panel, changelog, or no-work day feature
- ❌ Do not use placeholder URLs like `https://example.com` — find real links
- ❌ Do not skip the version bump when making changes
- ❌ Do not generate more than one PHASES block — tasks come from Supabase, not HTML

---

## Example conversation starters

**Simple:**
> "Build me a 4-week Italian cooking schedule using the template — 1 hour per day, 5 days a week."

**With context:**
> "Using the template, create a 12-week data science roadmap for someone who already knows Python and basic statistics. 3 hours/day, 5 days/week. Focus on pandas, scikit-learn, and matplotlib."

**Adding to existing:**
> "Add a 4-week SQL module to my existing Spanish roadmap starting from week 5, 1 hour/day."

**Modifying:**
> "Change the Week 2 Spanish tasks to focus more on listening comprehension rather than grammar."

---

## App features reference (for Claude)

| Feature | How to trigger |
|---|---|
| Skip a day | 🚫 Skip day button on each day header |
| Mark task complete | Tap the task card |
| Add custom subject | Bottom nav → + ADD SUBJECT |
| Remove a task | × button on task card |
| Remove a subject | 📋 SUBJECTS → Remove × |
| Reorder subjects | 📋 SUBJECTS → drag ☰ handle |
| View changelog | ⚙ Settings → Change history |
| Rotate API key | ⚙ Settings → API key → How to |
| Change schedule dates | ⚙ Settings → Schedule settings → Change |
| Reset all progress | ⚙ Settings → Reset all progress |
