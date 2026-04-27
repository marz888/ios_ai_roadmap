-- iOS & AI Learning Roadmap — Task seed (v3.09)
-- Tue 28 Apr – Mon 25 May 2026
-- Week 1 starts mid-week (Tue), Weeks 2+ start Monday
-- user_id = 'roadmap' — change this to match your SUPABASE_USER

DROP TABLE IF EXISTS ios_ai_tasks;
CREATE TABLE ios_ai_tasks (
  user_id        text NOT NULL,
  id             text NOT NULL,
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
  created_at     timestamptz DEFAULT now(),
  PRIMARY KEY (user_id, id)
);

ALTER TABLE ios_ai_tasks DISABLE ROW LEVEL SECURITY;

INSERT INTO ios_ai_tasks
  (user_id, id, phase_id, phase_title, phase_color,
   week_num, week_date_from, week_date_to,
   day_num, day_date, day_label,
   time_slot, task_text, resource, url, tag, sort_order)
VALUES
  ('roadmap', '1-1-1', 1, 'Phase 1 — Foundations', '#4ade80', 1, '28 Apr 2026', '1 May 2026', 1, 'Tue 28 Apr 2026', 'Day 1', 'Morning 15min', 'how-to-type.com — Lesson 1: right hand finger placement on J K L ;', 'how-to-type.com — Lesson 1', 'https://www.how-to-type.com/touch-typing-lessons/how-to-type-home-keys/', 'Typing', 1),
  ('roadmap', '1-1-2', 1, 'Phase 1 — Foundations', '#4ade80', 1, '28 Apr 2026', '1 May 2026', 1, 'Tue 28 Apr 2026', 'Day 1', 'Mid-morning 2.5hrs', 'Python refresh: lists, dicts, lambda functions', 'Coursera: Python for Everybody', 'https://www.coursera.org/learn/python', 'Python', 2),
  ('roadmap', '1-1-3', 1, 'Phase 1 — Foundations', '#4ade80', 1, '28 Apr 2026', '1 May 2026', 1, 'Tue 28 Apr 2026', 'Day 1', 'Afternoon 2hrs', 'Anthropic Academy: Building with the Claude API — Module 1: API setup, authentication, your first API call', 'Anthropic Academy — Building with the Claude API', 'https://anthropic.skilljar.com/building-with-the-anthropic-api', 'AI', 3),
  ('roadmap', '1-1-4', 1, 'Phase 1 — Foundations', '#4ade80', 1, '28 Apr 2026', '1 May 2026', 1, 'Tue 28 Apr 2026', 'Day 1', 'Evening 15min', 'how-to-type.com — repeat Lesson 1, focus on not looking at keyboard', 'how-to-type.com', 'https://www.how-to-type.com/touch-typing-lessons/how-to-type-home-keys/', 'Typing', 4),
  ('roadmap', '1-2-1', 1, 'Phase 1 — Foundations', '#4ade80', 1, '28 Apr 2026', '1 May 2026', 2, 'Wed 29 Apr 2026', 'Day 2', 'Morning 15min', 'how-to-type.com — Lesson 2: left hand finger placement on A S D F', 'how-to-type.com — Lesson 2', 'https://www.how-to-type.com/touch-typing-lessons/how-to-type-home-keys/', 'Typing', 5),
  ('roadmap', '1-2-2', 1, 'Phase 1 — Foundations', '#4ade80', 1, '28 Apr 2026', '1 May 2026', 2, 'Wed 29 Apr 2026', 'Day 2', 'Mid-morning 2.5hrs', 'Python refresh: classes, OOP basics, file I/O', 'Coursera: Python for Everybody', 'https://www.coursera.org/learn/python', 'Python', 6),
  ('roadmap', '1-2-3', 1, 'Phase 1 — Foundations', '#4ade80', 1, '28 Apr 2026', '1 May 2026', 2, 'Wed 29 Apr 2026', 'Day 2', 'Afternoon 2hrs', 'Anthropic Academy: Building with the Claude API — Module 2: messages, tokens, system prompts, model selection', 'Anthropic Academy — Building with the Claude API', 'https://anthropic.skilljar.com/building-with-the-anthropic-api', 'AI', 7),
  ('roadmap', '1-2-4', 1, 'Phase 1 — Foundations', '#4ade80', 1, '28 Apr 2026', '1 May 2026', 2, 'Wed 29 Apr 2026', 'Day 2', 'Evening 15min', 'how-to-type.com — repeat Lesson 2, both hands on home row, no peeking', 'how-to-type.com', 'https://www.how-to-type.com/touch-typing-lessons/how-to-type-home-keys/', 'Typing', 8),
  ('roadmap', '1-3-1', 1, 'Phase 1 — Foundations', '#4ade80', 1, '28 Apr 2026', '1 May 2026', 3, 'Thu 30 Apr 2026', 'Day 3', 'Morning 15min', 'how-to-type.com — Lesson 3: top row keys E R U I — reach up from home row', 'how-to-type.com — Lesson 3', 'https://www.how-to-type.com/touch-typing-lessons/', 'Typing', 9),
  ('roadmap', '1-3-2', 1, 'Phase 1 — Foundations', '#4ade80', 1, '28 Apr 2026', '1 May 2026', 3, 'Thu 30 Apr 2026', 'Day 3', 'Mid-morning 2.5hrs', 'Install Anaconda, setup Jupyter notebook, intro to NumPy', 'Anaconda — free download', 'https://www.anaconda.com/download', 'Python', 10),
  ('roadmap', '1-3-3', 1, 'Phase 1 — Foundations', '#4ade80', 1, '28 Apr 2026', '1 May 2026', 3, 'Thu 30 Apr 2026', 'Day 3', 'Afternoon 2hrs', 'Anthropic Academy: Building with the Claude API — Module 3: tool use, function calling, structured outputs', 'Anthropic Academy — Building with the Claude API', 'https://anthropic.skilljar.com/building-with-the-anthropic-api', 'AI', 11),
  ('roadmap', '1-3-4', 1, 'Phase 1 — Foundations', '#4ade80', 1, '28 Apr 2026', '1 May 2026', 3, 'Thu 30 Apr 2026', 'Day 3', 'Evening 15min', 'how-to-type.com — repeat Lesson 3, top row keys until movements feel automatic', 'how-to-type.com', 'https://www.how-to-type.com/touch-typing-lessons/', 'Typing', 12),
  ('roadmap', '1-4-1', 1, 'Phase 1 — Foundations', '#4ade80', 1, '28 Apr 2026', '1 May 2026', 4, 'Fri 1 May 2026', 'Day 4', 'Morning 15min', 'how-to-type.com — Lesson 4: bottom row keys C V B N M — reach down from home row', 'how-to-type.com — Lesson 4', 'https://www.how-to-type.com/touch-typing-lessons/', 'Typing', 13),
  ('roadmap', '1-4-2', 1, 'Phase 1 — Foundations', '#4ade80', 1, '28 Apr 2026', '1 May 2026', 4, 'Fri 1 May 2026', 'Day 4', 'Mid-morning 2.5hrs', 'Swift: Install Xcode, read Swift Tour on swift.org', 'swift.org — A Swift Tour', 'https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour/', 'Swift', 14),
  ('roadmap', '1-4-3', 1, 'Phase 1 — Foundations', '#4ade80', 1, '28 Apr 2026', '1 May 2026', 4, 'Fri 1 May 2026', 'Day 4', 'Afternoon 2hrs', 'Swift: Variables, constants, types, string interpolation', 'Coursera: iOS App Dev with Swift', 'https://www.coursera.org/learn/swift-5-ios-app-developer-specialization', 'Swift', 15),
  ('roadmap', '1-4-4', 1, 'Phase 1 — Foundations', '#4ade80', 1, '28 Apr 2026', '1 May 2026', 4, 'Fri 1 May 2026', 'Day 4', 'Evening 15min', 'how-to-type.com — repeat Lesson 4, bottom row keys, keep fingers returning to home row', 'how-to-type.com', 'https://www.how-to-type.com/touch-typing-lessons/', 'Typing', 16),
  ('roadmap', '1-5-1', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 1, 'Mon 4 May 2026', 'Day 5', 'Morning 15min', 'how-to-type.com — Lesson 5: full keyboard review. Focus on accuracy, do not look at keyboard', 'how-to-type.com — Lesson 5', 'https://www.how-to-type.com/touch-typing-lessons/', 'Typing', 17),
  ('roadmap', '1-5-2', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 1, 'Mon 4 May 2026', 'Day 5', 'Mid-morning 2.5hrs', 'Swift: Optionals, if-let, guard statements', 'YouTube: Sean Allen — Swift for Beginners', 'https://www.youtube.com/@seanallen', 'Swift', 18),
  ('roadmap', '1-5-3', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 1, 'Mon 4 May 2026', 'Day 5', 'Afternoon 2hrs', 'Anthropic Academy: Building with the Claude API — Module 4: RAG, embeddings, agent architecture patterns', 'Anthropic Academy — Building with the Claude API', 'https://anthropic.skilljar.com/building-with-the-anthropic-api', 'AI', 19),
  ('roadmap', '1-5-4', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 1, 'Mon 4 May 2026', 'Day 5', 'Evening 15min', 'how-to-type.com — repeat Lesson 5, full keyboard review, note your end of week WPM', 'how-to-type.com', 'https://www.how-to-type.com/touch-typing-lessons/', 'Typing', 20),
  ('roadmap', '2-1-1', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 2, 'Tue 5 May 2026', 'Day 6', 'Morning 15min', 'how-to-type.com — Lesson 6: capital letters and shift key — both hands now working together', 'how-to-type.com — Lesson 6', 'https://www.how-to-type.com/touch-typing-lessons/', 'Typing', 21),
  ('roadmap', '2-1-2', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 2, 'Tue 5 May 2026', 'Day 6', 'Mid-morning 2.5hrs', 'Swift: Functions, closures, higher-order functions', '100 Days of SwiftUI — Day 1–5', 'https://www.hackingwithswift.com/100/swiftui', 'Swift', 22),
  ('roadmap', '2-1-3', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 2, 'Tue 5 May 2026', 'Day 6', 'Afternoon 2hrs', 'Anthropic Academy: Claude Code in Action — Module 1: install Claude Code, first agentic coding session', 'Anthropic Academy — Claude Code in Action', 'https://anthropic.skilljar.com/claude-code-in-action', 'AI', 23),
  ('roadmap', '2-1-4', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 2, 'Tue 5 May 2026', 'Day 6', 'Evening 15min', 'how-to-type.com — repeat Lesson 6, capitals and shift key, accuracy over speed', 'how-to-type.com', 'https://www.how-to-type.com/touch-typing-lessons/', 'Typing', 24),
  ('roadmap', '2-2-1', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 3, 'Wed 6 May 2026', 'Day 7', 'Morning 15min', 'how-to-type.com — Lesson 7: numbers row', 'how-to-type.com — Lesson 7', 'https://www.how-to-type.com/touch-typing-lessons/', 'Typing', 25),
  ('roadmap', '2-2-2', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 3, 'Wed 6 May 2026', 'Day 7', 'Mid-morning 2.5hrs', 'Swift: Structs, classes, properties, methods', '100 Days of SwiftUI — Day 6–10', 'https://www.hackingwithswift.com/100/swiftui', 'Swift', 26),
  ('roadmap', '2-2-3', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 3, 'Wed 6 May 2026', 'Day 7', 'Afternoon 2hrs', 'Anthropic Academy: Claude Code in Action — Module 2: CLAUDE.md config, custom slash commands, daily workflow', 'Anthropic Academy — Claude Code in Action', 'https://anthropic.skilljar.com/claude-code-in-action', 'AI', 27),
  ('roadmap', '2-2-4', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 3, 'Wed 6 May 2026', 'Day 7', 'Evening 15min', 'how-to-type.com — repeat Lesson 7, numbers row, focus on weak fingers', 'how-to-type.com', 'https://www.how-to-type.com/touch-typing-lessons/', 'Typing', 28),
  ('roadmap', '2-3-1', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 4, 'Thu 7 May 2026', 'Day 8', 'Morning 15min', 'how-to-type.com — Lesson 8: punctuation', 'how-to-type.com — Lesson 8', 'https://www.how-to-type.com/touch-typing-lessons/', 'Typing', 29),
  ('roadmap', '2-3-2', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 4, 'Thu 7 May 2026', 'Day 8', 'Mid-morning 2.5hrs', 'Swift: Arrays, dictionaries, sets, for loops', '100 Days of SwiftUI — Day 11–15', 'https://www.hackingwithswift.com/100/swiftui', 'Swift', 30),
  ('roadmap', '2-3-3', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 4, 'Thu 7 May 2026', 'Day 8', 'Afternoon 2hrs', 'Start Calculator app: Create Xcode project, basic UI layout', 'YouTube: Sean Allen — Build a Calculator in SwiftUI', 'https://www.youtube.com/@seanallen', 'Swift', 31),
  ('roadmap', '2-3-4', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 4, 'Thu 7 May 2026', 'Day 8', 'Evening 15min', 'Keybr.com — first session, let it adapt to your weak keys', 'Keybr.com', 'https://www.keybr.com', 'Typing', 32),
  ('roadmap', '2-4-1', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 5, 'Fri 8 May 2026', 'Day 9', 'Morning 15min', 'Keybr.com — focus on weak keys from yesterday', 'Keybr.com', 'https://www.keybr.com', 'Typing', 33),
  ('roadmap', '2-4-2', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 5, 'Fri 8 May 2026', 'Day 9', 'Mid-morning 2.5hrs', 'Anthropic Academy: Claude Code in Action — Module 3: thinking mode, planning mode, context management', 'Anthropic Academy — Claude Code in Action', 'https://anthropic.skilljar.com/claude-code-in-action', 'AI', 34),
  ('roadmap', '2-4-3', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 5, 'Fri 8 May 2026', 'Day 9', 'Afternoon 2hrs', 'Calculator app: Add buttons grid, @State for display', 'Apple Developer Docs: SwiftUI State', 'https://developer.apple.com/documentation/swiftui/state', 'Swift', 35),
  ('roadmap', '2-4-4', 1, 'Phase 1 — Foundations', '#4ade80', 2, '4 May 2026', '8 May 2026', 5, 'Fri 8 May 2026', 'Day 9', 'Evening 15min', 'Keybr.com — 15 min speed session, focus on accuracy first', 'Keybr.com', 'https://www.keybr.com', 'Typing', 36),
  ('roadmap', '2-5-1', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 1, 'Mon 11 May 2026', 'Day 10', 'Morning 15min', 'Keybr.com — aim for personal best today', 'Keybr.com', 'https://www.keybr.com', 'Typing', 37),
  ('roadmap', '2-5-2', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 1, 'Mon 11 May 2026', 'Day 10', 'Mid-morning 2.5hrs', 'Anthropic Academy: Claude Code in Action — Module 4: integrate Claude Code into a real Swift project', 'Anthropic Academy — Claude Code in Action', 'https://anthropic.skilljar.com/claude-code-in-action', 'AI', 38),
  ('roadmap', '2-5-3', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 1, 'Mon 11 May 2026', 'Day 10', 'Afternoon 2hrs', 'Calculator app: Add arithmetic logic, polish UI', 'YouTube: Sean Allen — SwiftUI Calculator', 'https://www.youtube.com/@seanallen', 'Swift', 39),
  ('roadmap', '2-5-4', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 1, 'Mon 11 May 2026', 'Day 10', 'Evening 15min', 'Keybr.com — note WPM progress vs week 1', 'Keybr.com', 'https://www.keybr.com', 'Typing', 40),
  ('roadmap', '3-1-1', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 2, 'Tue 12 May 2026', 'Day 11', 'Morning 15min', 'Keybr.com — number row introduction', 'Keybr.com', 'https://www.keybr.com', 'Typing', 41),
  ('roadmap', '3-1-2', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 2, 'Tue 12 May 2026', 'Day 11', 'Mid-morning 2.5hrs', 'Swift: Protocols, extensions, error handling', '100 Days of SwiftUI — Day 16–20', 'https://www.hackingwithswift.com/100/swiftui', 'Swift', 42),
  ('roadmap', '3-1-3', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 2, 'Tue 12 May 2026', 'Day 11', 'Afternoon 2hrs', 'Anthropic Academy: Intro to MCP — Module 1: what is MCP, tools, resources and prompts primitives', 'Anthropic Academy — Introduction to MCP', 'https://anthropic.skilljar.com/introduction-to-model-context-protocol', 'AI', 43),
  ('roadmap', '3-1-4', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 2, 'Tue 12 May 2026', 'Day 11', 'Evening 15min', 'Keybr.com — 15 min speed session, focus on accuracy first', 'Keybr.com', 'https://www.keybr.com', 'Typing', 44),
  ('roadmap', '3-2-1', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 3, 'Wed 13 May 2026', 'Day 12', 'Morning 15min', 'Keybr.com — symbols and punctuation', 'Keybr.com', 'https://www.keybr.com', 'Typing', 45),
  ('roadmap', '3-2-2', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 3, 'Wed 13 May 2026', 'Day 12', 'Mid-morning 2.5hrs', 'Swift: SwiftUI views, VStack, HStack, ZStack, Text, Image', '100 Days of SwiftUI — Day 21–25', 'https://www.hackingwithswift.com/100/swiftui', 'Swift', 46),
  ('roadmap', '3-2-3', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 3, 'Wed 13 May 2026', 'Day 12', 'Afternoon 2hrs', 'PyTorch: Install PyTorch in Jupyter, tensors intro', 'PyTorch — Getting Started Tutorials', 'https://pytorch.org/tutorials/beginner/basics/intro.html', 'PyTorch', 47),
  ('roadmap', '3-2-4', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 3, 'Wed 13 May 2026', 'Day 12', 'Evening 15min', 'Keybr.com — 15 min speed session, focus on accuracy first', 'Keybr.com', 'https://www.keybr.com', 'Typing', 48),
  ('roadmap', '3-3-1', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 4, 'Thu 14 May 2026', 'Day 13', 'Morning 15min', 'Keybr.com — full keyboard including numbers', 'Keybr.com', 'https://www.keybr.com', 'Typing', 49),
  ('roadmap', '3-3-2', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 4, 'Thu 14 May 2026', 'Day 13', 'Mid-morning 2.5hrs', 'Swift: Buttons, TextField, @State, @Binding', 'Apple Developer — SwiftUI Tutorials', 'https://developer.apple.com/tutorials/swiftui', 'Swift', 50),
  ('roadmap', '3-3-3', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 4, 'Thu 14 May 2026', 'Day 13', 'Afternoon 2hrs', 'PyTorch: Tensor operations, reshaping, basic maths', 'YouTube: Daniel Bourke — PyTorch for Deep Learning Ch1', 'https://www.youtube.com/@mrdbourke', 'PyTorch', 51),
  ('roadmap', '3-3-4', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 4, 'Thu 14 May 2026', 'Day 13', 'Evening 15min', 'Keybr.com — 15 min speed session, focus on accuracy first', 'Keybr.com', 'https://www.keybr.com', 'Typing', 52),
  ('roadmap', '3-4-1', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 5, 'Fri 15 May 2026', 'Day 14', 'Morning 15min', 'Keybr.com — accuracy focus, slow down if needed', 'Keybr.com', 'https://www.keybr.com', 'Typing', 53),
  ('roadmap', '3-4-2', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 5, 'Fri 15 May 2026', 'Day 14', 'Mid-morning 2.5hrs', 'Anthropic Academy: Intro to MCP — Module 2: build your first MCP server in Python, connect to Claude', 'Anthropic Academy — Introduction to MCP', 'https://anthropic.skilljar.com/introduction-to-model-context-protocol', 'AI', 54),
  ('roadmap', '3-4-3', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 5, 'Fri 15 May 2026', 'Day 14', 'Afternoon 2hrs', 'Swift: Navigation, NavigationStack, passing data between views', '100 Days of SwiftUI — Day 26–30', 'https://www.hackingwithswift.com/100/swiftui', 'Swift', 55),
  ('roadmap', '3-4-4', 1, 'Phase 1 — Foundations', '#4ade80', 3, '11 May 2026', '15 May 2026', 5, 'Fri 15 May 2026', 'Day 14', 'Evening 15min', 'Keybr.com — 15 min speed session, focus on accuracy first', 'Keybr.com', 'https://www.keybr.com', 'Typing', 56),
  ('roadmap', '3-5-1', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 1, 'Mon 18 May 2026', 'Day 15', 'Morning 15min', 'Keybr.com — aim for 35 WPM personal best', 'Keybr.com', 'https://www.keybr.com', 'Typing', 57),
  ('roadmap', '3-5-2', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 1, 'Mon 18 May 2026', 'Day 15', 'Mid-morning 2.5hrs', 'Anthropic Academy: Intro to MCP — Module 3: test and debug MCP server using MCP Inspector', 'Anthropic Academy — Introduction to MCP', 'https://anthropic.skilljar.com/introduction-to-model-context-protocol', 'AI', 58),
  ('roadmap', '3-5-3', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 1, 'Mon 18 May 2026', 'Day 15', 'Afternoon 2hrs', 'Week review: revise notes, fix any gaps in Swift or AI', 'Hacking with Swift — free reference', 'https://www.hackingwithswift.com', 'Review', 59),
  ('roadmap', '3-5-4', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 1, 'Mon 18 May 2026', 'Day 15', 'Evening 15min', 'Keybr.com — record end of week WPM in Keybr stats', 'Keybr.com', 'https://www.keybr.com', 'Typing', 60),
  ('roadmap', '4-1-1', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 2, 'Tue 19 May 2026', 'Day 16', 'Morning 15min', 'Keybr.com — full keyboard speed drill', 'Keybr.com', 'https://www.keybr.com', 'Typing', 61),
  ('roadmap', '4-1-2', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 2, 'Tue 19 May 2026', 'Day 16', 'Mid-morning 2.5hrs', 'Swift: Lists, ForEach, ScrollView, dynamic data', '100 Days of SwiftUI — Day 31–35', 'https://www.hackingwithswift.com/100/swiftui', 'Swift', 62),
  ('roadmap', '4-1-3', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 2, 'Tue 19 May 2026', 'Day 16', 'Afternoon 2hrs', 'Anthropic Academy: MCP Advanced Topics — Module 1: sampling, notifications, stdio vs HTTP transport', 'Anthropic Academy — MCP Advanced Topics', 'https://anthropic.skilljar.com/model-context-protocol-advanced-topics', 'AI', 63),
  ('roadmap', '4-1-4', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 2, 'Tue 19 May 2026', 'Day 16', 'Evening 15min', 'Keybr.com — 15 min speed session, focus on accuracy first', 'Keybr.com', 'https://www.keybr.com', 'Typing', 64),
  ('roadmap', '4-2-1', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 3, 'Wed 20 May 2026', 'Day 17', 'Morning 15min', 'Keybr.com — weak key focus', 'Keybr.com', 'https://www.keybr.com', 'Typing', 65),
  ('roadmap', '4-2-2', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 3, 'Wed 20 May 2026', 'Day 17', 'Mid-morning 2.5hrs', 'PyTorch: Build first neural network from scratch', 'YouTube: Daniel Bourke — PyTorch for Deep Learning Ch2', 'https://www.youtube.com/@mrdbourke', 'PyTorch', 66),
  ('roadmap', '4-2-3', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 3, 'Wed 20 May 2026', 'Day 17', 'Afternoon 2hrs', 'Swift: @ObservableObject, @EnvironmentObject, data flow', 'Apple Developer — Data Essentials in SwiftUI (WWDC)', 'https://developer.apple.com/videos/play/wwdc2020/10040/', 'Swift', 67),
  ('roadmap', '4-2-4', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 3, 'Wed 20 May 2026', 'Day 17', 'Evening 15min', 'Keybr.com — 15 min speed session, focus on accuracy first', 'Keybr.com', 'https://www.keybr.com', 'Typing', 68),
  ('roadmap', '4-3-1', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 4, 'Thu 21 May 2026', 'Day 18', 'Morning 15min', 'Keybr.com — speed push, aim above comfort zone', 'Keybr.com', 'https://www.keybr.com', 'Typing', 69),
  ('roadmap', '4-3-2', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 4, 'Thu 21 May 2026', 'Day 18', 'Mid-morning 2.5hrs', 'Swift: Sheets, alerts, confirmations — modal UX patterns', '100 Days of SwiftUI — Day 36–40', 'https://www.hackingwithswift.com/100/swiftui', 'Swift', 70),
  ('roadmap', '4-3-3', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 4, 'Thu 21 May 2026', 'Day 18', 'Afternoon 2hrs', 'PyTorch: Training loop, loss functions, optimisers', 'PyTorch — Training a Classifier Tutorial', 'https://pytorch.org/tutorials/beginner/blitz/cifar10_tutorial.html', 'PyTorch', 71),
  ('roadmap', '4-3-4', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 4, 'Thu 21 May 2026', 'Day 18', 'Evening 15min', 'Keybr.com — 15 min speed session, focus on accuracy first', 'Keybr.com', 'https://www.keybr.com', 'Typing', 72),
  ('roadmap', '4-4-1', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 5, 'Fri 22 May 2026', 'Day 19', 'Morning 15min', 'Keybr.com — consistency drill', 'Keybr.com', 'https://www.keybr.com', 'Typing', 73),
  ('roadmap', '4-4-2', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 5, 'Fri 22 May 2026', 'Day 19', 'Mid-morning 2.5hrs', 'Anthropic Academy: Introduction to Agent Skills — Module 1: write your first SKILL.md, trigger descriptions, directory structure', 'Anthropic Academy — Introduction to Agent Skills', 'https://anthropic.skilljar.com/introduction-to-agent-skills', 'AI', 74),
  ('roadmap', '4-4-3', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 5, 'Fri 22 May 2026', 'Day 19', 'Afternoon 2hrs', 'Swift: Finish and polish Calculator app — test all functions', 'Apple Developer — Xcode Simulator Guide', 'https://developer.apple.com/documentation/xcode/running-your-app-in-simulator-or-on-a-device', 'Swift', 75),
  ('roadmap', '4-4-4', 1, 'Phase 1 — Foundations', '#4ade80', 4, '18 May 2026', '22 May 2026', 5, 'Fri 22 May 2026', 'Day 19', 'Evening 15min', 'Keybr.com — 15 min speed session, focus on accuracy first', 'Keybr.com', 'https://www.keybr.com', 'Typing', 76),
  ('roadmap', '4-5-1', 1, 'Phase 1 — Foundations', '#4ade80', 5, '25 May 2026', '25 May 2026', 1, 'Mon 25 May 2026', 'Day 20', 'Morning 15min', 'Keybr.com — Phase 1 final typing test, record WPM', 'Keybr.com', 'https://www.keybr.com', 'Typing', 77),
  ('roadmap', '4-5-2', 1, 'Phase 1 — Foundations', '#4ade80', 5, '25 May 2026', '25 May 2026', 1, 'Mon 25 May 2026', 'Day 20', 'Mid-morning 2.5hrs', 'Phase 1 review: Go through all Swift notes, fill gaps', 'Hacking with Swift — free reference', 'https://www.hackingwithswift.com', 'Review', 78),
  ('roadmap', '4-5-3', 1, 'Phase 1 — Foundations', '#4ade80', 5, '25 May 2026', '25 May 2026', 1, 'Mon 25 May 2026', 'Day 20', 'Afternoon 2hrs', 'Phase 1 review: revisit Anthropic Academy notes — Claude API, Claude Code, MCP, Agent Skills. Plan what to build next.', 'Anthropic Academy — all courses', 'https://anthropic.skilljar.com', 'Review', 79),
  ('roadmap', '4-5-4', 1, 'Phase 1 — Foundations', '#4ade80', 5, '25 May 2026', '25 May 2026', 1, 'Mon 25 May 2026', 'Day 20', 'Evening 15min', 'Keybr.com — Phase 1 final session, screenshot your stats and WPM', 'Keybr.com', 'https://www.keybr.com', 'Typing', 80);

-- Update ios_ai_changelog to add user_id if not already present
ALTER TABLE ios_ai_changelog ADD COLUMN IF NOT EXISTS user_id text;
ALTER TABLE ios_ai_changelog ADD COLUMN IF NOT EXISTS roadmap_version text;

SELECT COUNT(*) as total_tasks FROM ios_ai_tasks WHERE user_id = 'roadmap';
SELECT week_num, week_date_from, week_date_to,
       COUNT(DISTINCT day_date) as days,
       COUNT(*) as tasks
FROM ios_ai_tasks
WHERE user_id = 'roadmap'
GROUP BY week_num, week_date_from, week_date_to
ORDER BY week_num;
