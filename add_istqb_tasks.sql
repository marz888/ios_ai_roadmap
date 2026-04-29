-- ════════════════════════════════════════════════════════
-- Add ISTQB Software Testing sessions to Phase 1 roadmap
-- 3 sessions/week × 1hr on Mon, Wed, Fri starting Mon 4 May 2026
-- 
-- SAFE TO RUN: uses INSERT ... ON CONFLICT DO NOTHING
-- Existing tasks and all progress data are completely untouched
-- New task IDs use 'istqb-' prefix — no collision with existing IDs
-- ════════════════════════════════════════════════════════

INSERT INTO ios_ai_tasks
  (user_id, id, phase_id, phase_title, phase_color,
   week_num, week_date_from, week_date_to,
   day_num, day_date, day_label,
   time_slot, task_text, resource, url, tag, sort_order)
VALUES
  ('roadmap', 'istqb-01', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 1, 'Mon 4 May 2026', 'Day 5', '1hr session', 'ISTQB Course 1: What is software testing — principles, importance, fundamental concepts and testing process activities', 'Coursera: Fundamentals of Static Testing — Week 1', 'https://www.coursera.org/learn/fundamentals-of-static-testing', 'Testing', 81),
  ('roadmap', 'istqb-02', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 3, 'Wed 6 May 2026', 'Day 7', '1hr session', 'ISTQB Course 1: Traceability, psychology of testing + static testing techniques — code reviews, walkthroughs, inspections', 'Coursera: Fundamentals of Static Testing — Week 2', 'https://www.coursera.org/learn/fundamentals-of-static-testing', 'Testing', 82),
  ('roadmap', 'istqb-03', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 5, 'Fri 8 May 2026', 'Day 9', '1hr session', 'ISTQB Course 1: Review process (planning, initiation, rework, closure) + success factors for reviews', 'Coursera: Fundamentals of Static Testing — Week 3', 'https://www.coursera.org/learn/fundamentals-of-static-testing', 'Testing', 83),
  ('roadmap', 'istqb-04', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 1, 'Mon 11 May 2026', 'Day 10', '1hr session', 'ISTQB Course 1: Quality characteristics + static analysis tools — apply linters to your Python and Swift code', 'Coursera: Fundamentals of Static Testing — Week 4', 'https://www.coursera.org/learn/fundamentals-of-static-testing', 'Testing', 84),
  ('roadmap', 'istqb-05', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 3, 'Wed 13 May 2026', 'Day 12', '1hr session', 'ISTQB Course 1: Graded quiz + reflection — how static testing applies to your Swift Calculator app', 'Coursera: Fundamentals of Static Testing — Quiz', 'https://www.coursera.org/learn/fundamentals-of-static-testing', 'Testing', 85),
  ('roadmap', 'istqb-06', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 5, 'Fri 15 May 2026', 'Day 14', '1hr session', 'ISTQB Course 2: Testing in SDLC models (V-model, Waterfall, Agile) + test levels — unit, integration, system, acceptance', 'Coursera: Essential Testing Techniques — Week 1', 'https://www.coursera.org/learn/essential-testing-techniques-in-software-development', 'Testing', 86),
  ('roadmap', 'istqb-07', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 1, 'Mon 18 May 2026', 'Day 15', '1hr session', 'ISTQB Course 2: Test types + black-box techniques — equivalence partitioning and boundary value analysis', 'Coursera: Essential Testing Techniques — Week 2', 'https://www.coursera.org/learn/essential-testing-techniques-in-software-development', 'Testing', 87),
  ('roadmap', 'istqb-08', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 3, 'Wed 20 May 2026', 'Day 17', '1hr session', 'ISTQB Course 2: Decision table testing + white-box coverage — apply to Calculator app and Python code', 'Coursera: Essential Testing Techniques — Week 3', 'https://www.coursera.org/learn/essential-testing-techniques-in-software-development', 'Testing', 88),
  ('roadmap', 'istqb-09', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 5, 'Fri 22 May 2026', 'Day 19', '1hr session', 'ISTQB Course 2: Experience-based testing + full 40-question ISTQB mock exam timed under exam conditions', 'ISTQB Sample Exams — free', 'https://www.istqb.org/certifications/certified-tester-foundation-level', 'Testing', 89),
  ('roadmap', 'istqb-10', 1, 'Phase 1 — Foundations', '#4ade80', 5, '25 May 2026', '25 May 2026', 1, 'Mon 25 May 2026', 'Day 20', '1hr session', 'ISTQB Exam prep: Review mock exam wrong answers + consolidate notes + book CTFL exam with BCS UK', 'BCS ISTQB Registration UK', 'https://www.bcs.org/qualifications-and-certifications/certifications-for-professionals/software-testing-certifications/', 'Testing', 90)
ON CONFLICT (user_id, id) DO NOTHING;
-- ON CONFLICT DO NOTHING means:
-- If these rows already exist they are skipped — safe to re-run
-- Your existing progress in ios_ai_progress is NEVER touched

-- Verify results
SELECT tag, COUNT(*) as tasks
FROM ios_ai_tasks
WHERE user_id = 'roadmap'
GROUP BY tag
ORDER BY tag;
