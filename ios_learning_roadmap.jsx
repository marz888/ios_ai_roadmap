import { useState, useEffect } from "react";

const phases = [
  {
    id: 1,
    title: "Phase 1 — Foundations",
    weeks: "Weeks 1–4",
    color: "#4ade80",
    weeks_data: [
      {
        week: 1,
        days: [
          {
            date: "Thu 28 May 2026",
            label: "Day 1",
            tasks: [
              { id: "1-1-1", time: "Morning 15min", text: "Keybr.com — home row keys (A S D F J K L)", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "1-1-2", time: "Mid-morning 2.5hrs", text: "Python refresh: lists, dicts, lambda functions", resource: "Coursera: Python for Everybody — Week 1", url: "https://www.coursera.org/learn/python", tag: "Python" },
              { id: "1-1-3", time: "Afternoon 2hrs", text: "Coursera: AI For Everyone — Chapter 1: What is AI?", resource: "Coursera: AI For Everyone by Andrew Ng", url: "https://www.coursera.org/learn/ai-for-everyone", tag: "AI" },
              { id: "1-1-4", time: "Evening 15min", text: "TypeRacer.com — first race, note your WPM", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
          {
            date: "Fri 29 May 2026",
            label: "Day 2",
            tasks: [
              { id: "1-2-1", time: "Morning 15min", text: "Keybr.com — home row, focus on accuracy not speed", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "1-2-2", time: "Mid-morning 2.5hrs", text: "Python refresh: classes, OOP basics, file I/O", resource: "Coursera: Python for Everybody — Week 2", url: "https://www.coursera.org/learn/python", tag: "Python" },
              { id: "1-2-3", time: "Afternoon 2hrs", text: "Coursera: AI For Everyone — Chapter 2: Building AI Projects", resource: "Coursera: AI For Everyone by Andrew Ng", url: "https://www.coursera.org/learn/ai-for-everyone", tag: "AI" },
              { id: "1-2-4", time: "Evening 15min", text: "TypeRacer.com — 3 races, track improvement", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
          {
            date: "Mon 1 Jun 2026",
            label: "Day 3",
            tasks: [
              { id: "1-3-1", time: "Morning 15min", text: "Keybr.com — introduce top row keys", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "1-3-2", time: "Mid-morning 2.5hrs", text: "Install Anaconda, setup Jupyter notebook, intro to NumPy", resource: "Anaconda — free download", url: "https://www.anaconda.com/download", tag: "Python" },
              { id: "1-3-3", time: "Afternoon 2hrs", text: "Coursera: AI For Everyone — Chapter 3: AI and Society", resource: "Coursera: AI For Everyone by Andrew Ng", url: "https://www.coursera.org/learn/ai-for-everyone", tag: "AI" },
              { id: "1-3-4", time: "Evening 15min", text: "TypeRacer.com — 3 races", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
          {
            date: "Tue 2 Jun 2026",
            label: "Day 4",
            tasks: [
              { id: "1-4-1", time: "Morning 15min", text: "Keybr.com — top row practice", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "1-4-2", time: "Mid-morning 2.5hrs", text: "Swift: Install Xcode, read Swift Tour on swift.org", resource: "swift.org — A Swift Tour", url: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour/", tag: "Swift" },
              { id: "1-4-3", time: "Afternoon 2hrs", text: "Swift: Variables, constants, types, string interpolation", resource: "Coursera: iOS App Dev with Swift — Week 1", url: "https://www.coursera.org/learn/swift-5-ios-app-developer-specialization", tag: "Swift" },
              { id: "1-4-4", time: "Evening 15min", text: "TypeRacer.com — 3 races", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
          {
            date: "Wed 3 Jun 2026",
            label: "Day 5",
            tasks: [
              { id: "1-5-1", time: "Morning 15min", text: "Keybr.com — review all keys so far", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "1-5-2", time: "Mid-morning 2.5hrs", text: "Swift: Optionals, if-let, guard statements", resource: "YouTube: Sean Allen — Swift for Beginners", url: "https://www.youtube.com/@seanallen", tag: "Swift" },
              { id: "1-5-3", time: "Afternoon 2hrs", text: "ML Specialization Week 1: What is machine learning?", resource: "Coursera: Machine Learning Specialization — Andrew Ng", url: "https://www.coursera.org/specializations/machine-learning-introduction", tag: "AI" },
              { id: "1-5-4", time: "Evening 15min", text: "TypeRacer.com — note end of week WPM", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
        ]
      },
      {
        week: 2,
        days: [
          {
            date: "Thu 4 Jun 2026",
            label: "Day 6",
            tasks: [
              { id: "2-1-1", time: "Morning 15min", text: "Keybr.com — bottom row keys (Z X C V B N M)", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "2-1-2", time: "Mid-morning 2.5hrs", text: "Swift: Functions, closures, higher-order functions", resource: "100 Days of SwiftUI — Day 1–5", url: "https://www.hackingwithswift.com/100/swiftui", tag: "Swift" },
              { id: "2-1-3", time: "Afternoon 2hrs", text: "ML Specialization: Linear regression, cost function", resource: "Coursera: Machine Learning Specialization — Andrew Ng", url: "https://www.coursera.org/specializations/machine-learning-introduction", tag: "AI" },
              { id: "2-1-4", time: "Evening 15min", text: "TypeRacer.com — 3 races", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
          {
            date: "Fri 5 Jun 2026",
            label: "Day 7",
            tasks: [
              { id: "2-2-1", time: "Morning 15min", text: "Keybr.com — full keyboard practice", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "2-2-2", time: "Mid-morning 2.5hrs", text: "Swift: Structs, classes, properties, methods", resource: "100 Days of SwiftUI — Day 6–10", url: "https://www.hackingwithswift.com/100/swiftui", tag: "Swift" },
              { id: "2-2-3", time: "Afternoon 2hrs", text: "ML Specialization: Gradient descent explained", resource: "Coursera: Machine Learning Specialization — Andrew Ng", url: "https://www.coursera.org/specializations/machine-learning-introduction", tag: "AI" },
              { id: "2-2-4", time: "Evening 15min", text: "TypeRacer.com — 3 races", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
          {
            date: "Mon 8 Jun 2026",
            label: "Day 8",
            tasks: [
              { id: "2-3-1", time: "Morning 15min", text: "Keybr.com — speed drill, full keyboard", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "2-3-2", time: "Mid-morning 2.5hrs", text: "Swift: Arrays, dictionaries, sets, for loops", resource: "100 Days of SwiftUI — Day 11–15", url: "https://www.hackingwithswift.com/100/swiftui", tag: "Swift" },
              { id: "2-3-3", time: "Afternoon 2hrs", text: "Start Calculator app: Create Xcode project, basic UI layout", resource: "YouTube: Sean Allen — Build a Calculator in SwiftUI", url: "https://www.youtube.com/@seanallen", tag: "Swift" },
              { id: "2-3-4", time: "Evening 15min", text: "TypeRacer.com — 3 races", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
          {
            date: "Tue 9 Jun 2026",
            label: "Day 9",
            tasks: [
              { id: "2-4-1", time: "Morning 15min", text: "Keybr.com — focus on weak keys from yesterday", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "2-4-2", time: "Mid-morning 2.5hrs", text: "ML Specialization: Multiple linear regression, vectorisation", resource: "Coursera: Machine Learning Specialization — Andrew Ng", url: "https://www.coursera.org/specializations/machine-learning-introduction", tag: "AI" },
              { id: "2-4-3", time: "Afternoon 2hrs", text: "Calculator app: Add buttons grid, @State for display", resource: "Apple Developer Docs: SwiftUI State", url: "https://developer.apple.com/documentation/swiftui/state", tag: "Swift" },
              { id: "2-4-4", time: "Evening 15min", text: "TypeRacer.com — 3 races", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
          {
            date: "Wed 10 Jun 2026",
            label: "Day 10",
            tasks: [
              { id: "2-5-1", time: "Morning 15min", text: "Keybr.com — aim for personal best today", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "2-5-2", time: "Mid-morning 2.5hrs", text: "ML Specialization: Classification, logistic regression", resource: "Coursera: Machine Learning Specialization — Andrew Ng", url: "https://www.coursera.org/specializations/machine-learning-introduction", tag: "AI" },
              { id: "2-5-3", time: "Afternoon 2hrs", text: "Calculator app: Add arithmetic logic, polish UI", resource: "YouTube: Sean Allen — SwiftUI Calculator", url: "https://www.youtube.com/@seanallen", tag: "Swift" },
              { id: "2-5-4", time: "Evening 15min", text: "TypeRacer.com — note WPM progress vs week 1", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
        ]
      },
      {
        week: 3,
        days: [
          {
            date: "Thu 11 Jun 2026",
            label: "Day 11",
            tasks: [
              { id: "3-1-1", time: "Morning 15min", text: "Keybr.com — number row introduction", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "3-1-2", time: "Mid-morning 2.5hrs", text: "Swift: Protocols, extensions, error handling", resource: "100 Days of SwiftUI — Day 16–20", url: "https://www.hackingwithswift.com/100/swiftui", tag: "Swift" },
              { id: "3-1-3", time: "Afternoon 2hrs", text: "ML Specialization: Decision trees, overfitting, regularisation", resource: "Coursera: Machine Learning Specialization — Andrew Ng", url: "https://www.coursera.org/specializations/machine-learning-introduction", tag: "AI" },
              { id: "3-1-4", time: "Evening 15min", text: "TypeRacer.com — 3 races", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
          {
            date: "Fri 12 Jun 2026",
            label: "Day 12",
            tasks: [
              { id: "3-2-1", time: "Morning 15min", text: "Keybr.com — symbols and punctuation", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "3-2-2", time: "Mid-morning 2.5hrs", text: "Swift: SwiftUI views, VStack, HStack, ZStack, Text, Image", resource: "100 Days of SwiftUI — Day 21–25", url: "https://www.hackingwithswift.com/100/swiftui", tag: "Swift" },
              { id: "3-2-3", time: "Afternoon 2hrs", text: "PyTorch: Install PyTorch in Jupyter, tensors intro", resource: "PyTorch — Getting Started Tutorials", url: "https://pytorch.org/tutorials/beginner/basics/intro.html", tag: "PyTorch" },
              { id: "3-2-4", time: "Evening 15min", text: "TypeRacer.com — 3 races", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
          {
            date: "Mon 15 Jun 2026",
            label: "Day 13",
            tasks: [
              { id: "3-3-1", time: "Morning 15min", text: "Keybr.com — full keyboard including numbers", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "3-3-2", time: "Mid-morning 2.5hrs", text: "Swift: Buttons, TextField, @State, @Binding", resource: "Apple Developer — SwiftUI Tutorials", url: "https://developer.apple.com/tutorials/swiftui", tag: "Swift" },
              { id: "3-3-3", time: "Afternoon 2hrs", text: "PyTorch: Tensor operations, reshaping, basic maths", resource: "YouTube: Daniel Bourke — PyTorch for Deep Learning Ch1", url: "https://www.youtube.com/@mrdbourke", tag: "PyTorch" },
              { id: "3-3-4", time: "Evening 15min", text: "TypeRacer.com — 3 races", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
          {
            date: "Tue 16 Jun 2026",
            label: "Day 14",
            tasks: [
              { id: "3-4-1", time: "Morning 15min", text: "Keybr.com — accuracy focus, slow down if needed", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "3-4-2", time: "Mid-morning 2.5hrs", text: "Deep Learning Specialization: Neural network intuition", resource: "Coursera: Deep Learning Specialization — Course 1 Week 1", url: "https://www.coursera.org/specializations/deep-learning", tag: "AI" },
              { id: "3-4-3", time: "Afternoon 2hrs", text: "Swift: Navigation, NavigationStack, passing data between views", resource: "100 Days of SwiftUI — Day 26–30", url: "https://www.hackingwithswift.com/100/swiftui", tag: "Swift" },
              { id: "3-4-4", time: "Evening 15min", text: "TypeRacer.com — 3 races", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
          {
            date: "Wed 17 Jun 2026",
            label: "Day 15",
            tasks: [
              { id: "3-5-1", time: "Morning 15min", text: "Keybr.com — aim for 35 WPM personal best", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "3-5-2", time: "Mid-morning 2.5hrs", text: "Deep Learning Specialization: Forward propagation, activation functions", resource: "Coursera: Deep Learning Specialization — Course 1 Week 2", url: "https://www.coursera.org/specializations/deep-learning", tag: "AI" },
              { id: "3-5-3", time: "Afternoon 2hrs", text: "Week review: revise notes, fix any gaps in Swift or AI", resource: "Hacking with Swift — free reference", url: "https://www.hackingwithswift.com", tag: "Review" },
              { id: "3-5-4", time: "Evening 15min", text: "TypeRacer.com — record end of week 3 WPM", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
        ]
      },
      {
        week: 4,
        days: [
          {
            date: "Thu 18 Jun 2026",
            label: "Day 16",
            tasks: [
              { id: "4-1-1", time: "Morning 15min", text: "Keybr.com — full keyboard speed drill", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "4-1-2", time: "Mid-morning 2.5hrs", text: "Swift: Lists, ForEach, ScrollView, dynamic data", resource: "100 Days of SwiftUI — Day 31–35", url: "https://www.hackingwithswift.com/100/swiftui", tag: "Swift" },
              { id: "4-1-3", time: "Afternoon 2hrs", text: "Deep Learning Specialization: Backpropagation explained", resource: "Coursera: Deep Learning Specialization — Course 1 Week 3", url: "https://www.coursera.org/specializations/deep-learning", tag: "AI" },
              { id: "4-1-4", time: "Evening 15min", text: "TypeRacer.com — 3 races", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
          {
            date: "Fri 19 Jun 2026",
            label: "Day 17",
            tasks: [
              { id: "4-2-1", time: "Morning 15min", text: "Keybr.com — weak key focus", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "4-2-2", time: "Mid-morning 2.5hrs", text: "PyTorch: Build first neural network from scratch", resource: "YouTube: Daniel Bourke — PyTorch for Deep Learning Ch2", url: "https://www.youtube.com/@mrdbourke", tag: "PyTorch" },
              { id: "4-2-3", time: "Afternoon 2hrs", text: "Swift: @ObservableObject, @EnvironmentObject, data flow", resource: "Apple Developer — Data Essentials in SwiftUI (WWDC)", url: "https://developer.apple.com/videos/play/wwdc2020/10040/", tag: "Swift" },
              { id: "4-2-4", time: "Evening 15min", text: "TypeRacer.com — 3 races", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
          {
            date: "Mon 22 Jun 2026",
            label: "Day 18",
            tasks: [
              { id: "4-3-1", time: "Morning 15min", text: "Keybr.com — speed push, aim above comfort zone", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "4-3-2", time: "Mid-morning 2.5hrs", text: "Swift: Sheets, alerts, confirmations — modal UX patterns", resource: "100 Days of SwiftUI — Day 36–40", url: "https://www.hackingwithswift.com/100/swiftui", tag: "Swift" },
              { id: "4-3-3", time: "Afternoon 2hrs", text: "PyTorch: Training loop, loss functions, optimisers", resource: "PyTorch — Training a Classifier Tutorial", url: "https://pytorch.org/tutorials/beginner/blitz/cifar10_tutorial.html", tag: "PyTorch" },
              { id: "4-3-4", time: "Evening 15min", text: "TypeRacer.com — 3 races", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
          {
            date: "Tue 23 Jun 2026",
            label: "Day 19",
            tasks: [
              { id: "4-4-1", time: "Morning 15min", text: "Keybr.com — consistency drill", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "4-4-2", time: "Mid-morning 2.5hrs", text: "Deep Learning Specialization: Improving neural networks — hyperparameters", resource: "Coursera: Deep Learning Specialization — Course 2 Week 1", url: "https://www.coursera.org/specializations/deep-learning", tag: "AI" },
              { id: "4-4-3", time: "Afternoon 2hrs", text: "Swift: Finish and polish Calculator app — test all functions", resource: "Apple Developer — Xcode Simulator Guide", url: "https://developer.apple.com/documentation/xcode/running-your-app-in-simulator-or-on-a-device", tag: "Swift" },
              { id: "4-4-4", time: "Evening 15min", text: "TypeRacer.com — 3 races", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
          {
            date: "Wed 24 Jun 2026",
            label: "Day 20",
            tasks: [
              { id: "4-5-1", time: "Morning 15min", text: "Keybr.com — Phase 1 final typing test, record WPM", resource: "Keybr.com", url: "https://www.keybr.com", tag: "Typing" },
              { id: "4-5-2", time: "Mid-morning 2.5hrs", text: "Phase 1 review: Go through all Swift notes, fill gaps", resource: "Hacking with Swift — free reference", url: "https://www.hackingwithswift.com", tag: "Review" },
              { id: "4-5-3", time: "Afternoon 2hrs", text: "Phase 1 review: AI/ML concepts recap, review Jupyter notebooks", resource: "fast.ai — Practical Deep Learning (free)", url: "https://www.fast.ai", tag: "Review" },
              { id: "4-5-4", time: "Evening 15min", text: "TypeRacer.com — Phase 1 final race, record score", resource: "TypeRacer.com", url: "https://www.typeracer.com", tag: "Typing" },
            ]
          },
        ]
      },
    ]
  }
];

const tagColors = {
  Typing: { bg: "#1e3a5f", text: "#60a5fa", border: "#2563eb" },
  Python: { bg: "#1a3a2a", text: "#4ade80", border: "#16a34a" },
  AI: { bg: "#2d1b69", text: "#a78bfa", border: "#7c3aed" },
  Swift: { bg: "#3b1a1a", text: "#f87171", border: "#dc2626" },
  PyTorch: { bg: "#3b2a0a", text: "#fbbf24", border: "#d97706" },
  Review: { bg: "#1a2a3b", text: "#94a3b8", border: "#475569" },
};

const timeColors = {
  "Morning 15min": "#60a5fa",
  "Mid-morning 2.5hrs": "#a78bfa",
  "Afternoon 2hrs": "#4ade80",
  "Evening 15min": "#fbbf24",
};

export default function LearningChecklist() {
  const [checked, setChecked] = useState({});
  const [expandedWeeks, setExpandedWeeks] = useState({ "1-0": true });
  const [expandedDays, setExpandedDays] = useState({});
  const [activeFilter, setActiveFilter] = useState("All");

  const toggle = (id) => setChecked(prev => ({ ...prev, [id]: !prev[id] }));

  const toggleWeek = (key) => setExpandedWeeks(prev => ({ ...prev, [key]: !prev[key] }));
  const toggleDay = (key) => setExpandedDays(prev => ({ ...prev, [key]: !prev[key] }));

  const allTasks = phases.flatMap(p => p.weeks_data.flatMap(w => w.days.flatMap(d => d.tasks)));
  const completedCount = allTasks.filter(t => checked[t.id]).length;
  const totalCount = allTasks.length;
  const progressPct = Math.round((completedCount / totalCount) * 100);

  const filters = ["All", "Typing", "Swift", "AI", "PyTorch", "Python", "Review"];

  return (
    <div style={{
      minHeight: "100vh",
      background: "#0a0f1a",
      fontFamily: "'JetBrains Mono', 'Fira Code', 'Courier New', monospace",
      color: "#e2e8f0",
      padding: "24px 16px",
    }}>
      {/* Header */}
      <div style={{ maxWidth: 800, margin: "0 auto 32px" }}>
        <div style={{ display: "flex", alignItems: "center", gap: 12, marginBottom: 8 }}>
          <div style={{
            width: 10, height: 10, borderRadius: "50%",
            background: "#4ade80", boxShadow: "0 0 8px #4ade80",
            animation: "pulse 2s infinite"
          }} />
          <span style={{ fontSize: 11, color: "#64748b", letterSpacing: 3, textTransform: "uppercase" }}>
            Learning Roadmap — Phase 1
          </span>
        </div>
        <h1 style={{
          fontSize: 28, fontWeight: 700, margin: "0 0 4px",
          background: "linear-gradient(135deg, #60a5fa, #a78bfa, #4ade80)",
          WebkitBackgroundClip: "text", WebkitTextFillColor: "transparent",
          lineHeight: 1.2
        }}>
          Day-by-Day Checklist
        </h1>
        <p style={{ color: "#64748b", fontSize: 13, margin: "0 0 24px" }}>
          Swift · AI/ML · PyTorch · Touch Typing — Starting Thu 28 May 2026
        </p>

        {/* Progress bar */}
        <div style={{
          background: "#0f172a", border: "1px solid #1e293b",
          borderRadius: 12, padding: "16px 20px"
        }}>
          <div style={{ display: "flex", justifyContent: "space-between", marginBottom: 10 }}>
            <span style={{ fontSize: 12, color: "#94a3b8" }}>Overall Progress</span>
            <span style={{ fontSize: 12, color: "#4ade80", fontWeight: 600 }}>
              {completedCount}/{totalCount} tasks · {progressPct}%
            </span>
          </div>
          <div style={{ background: "#1e293b", borderRadius: 99, height: 6, overflow: "hidden" }}>
            <div style={{
              height: "100%", borderRadius: 99,
              background: "linear-gradient(90deg, #60a5fa, #a78bfa, #4ade80)",
              width: `${progressPct}%`,
              transition: "width 0.5s ease",
              boxShadow: progressPct > 0 ? "0 0 12px #60a5fa44" : "none"
            }} />
          </div>
        </div>

        {/* Filter chips */}
        <div style={{ display: "flex", gap: 8, flexWrap: "wrap", marginTop: 16 }}>
          {filters.map(f => (
            <button key={f} onClick={() => setActiveFilter(f)} style={{
              padding: "4px 12px", borderRadius: 99, fontSize: 11,
              fontFamily: "inherit", cursor: "pointer",
              border: activeFilter === f ? `1px solid ${f === "All" ? "#60a5fa" : (tagColors[f]?.border || "#60a5fa")}` : "1px solid #1e293b",
              background: activeFilter === f ? (f === "All" ? "#1e3a5f" : (tagColors[f]?.bg || "#1e3a5f")) : "#0f172a",
              color: activeFilter === f ? (f === "All" ? "#60a5fa" : (tagColors[f]?.text || "#60a5fa")) : "#64748b",
              transition: "all 0.2s",
              letterSpacing: 1,
            }}>{f}</button>
          ))}
        </div>
      </div>

      {/* Content */}
      <div style={{ maxWidth: 800, margin: "0 auto" }}>
        {phases.map((phase, pi) => (
          <div key={pi}>
            {phase.weeks_data.map((week, wi) => {
              const weekKey = `${pi}-${wi}`;
              const weekTasks = week.days.flatMap(d => d.tasks);
              const weekDone = weekTasks.filter(t => checked[t.id]).length;
              const isWeekOpen = expandedWeeks[weekKey];

              return (
                <div key={wi} style={{ marginBottom: 16 }}>
                  {/* Week header */}
                  <button onClick={() => toggleWeek(weekKey)} style={{
                    width: "100%", background: "#0f172a",
                    border: `1px solid ${isWeekOpen ? phase.color + "44" : "#1e293b"}`,
                    borderRadius: 10, padding: "12px 16px",
                    cursor: "pointer", display: "flex",
                    justifyContent: "space-between", alignItems: "center",
                    fontFamily: "inherit", color: "#e2e8f0",
                    transition: "all 0.2s", marginBottom: isWeekOpen ? 8 : 0,
                  }}>
                    <div style={{ display: "flex", alignItems: "center", gap: 12 }}>
                      <div style={{
                        width: 8, height: 8, borderRadius: "50%",
                        background: phase.color,
                        boxShadow: isWeekOpen ? `0 0 8px ${phase.color}` : "none"
                      }} />
                      <span style={{ fontWeight: 600, fontSize: 14 }}>Week {week.week}</span>
                      <span style={{ fontSize: 11, color: "#64748b" }}>
                        {week.days[0].date.split(" ").slice(1).join(" ")} – {week.days[week.days.length - 1].date.split(" ").slice(1).join(" ")}
                      </span>
                    </div>
                    <div style={{ display: "flex", alignItems: "center", gap: 12 }}>
                      <span style={{
                        fontSize: 11,
                        color: weekDone === weekTasks.length ? "#4ade80" : "#64748b"
                      }}>
                        {weekDone}/{weekTasks.length}
                      </span>
                      <span style={{ color: "#64748b", fontSize: 12, transform: isWeekOpen ? "rotate(180deg)" : "none", transition: "0.2s" }}>▼</span>
                    </div>
                  </button>

                  {isWeekOpen && week.days.map((day, di) => {
                    const dayKey = `${weekKey}-${di}`;
                    const isDayOpen = expandedDays[dayKey] !== false;
                    const filteredTasks = activeFilter === "All" ? day.tasks : day.tasks.filter(t => t.tag === activeFilter);
                    const dayDone = day.tasks.filter(t => checked[t.id]).length;
                    const allDayDone = dayDone === day.tasks.length;
                    if (filteredTasks.length === 0) return null;

                    return (
                      <div key={di} style={{
                        marginBottom: 8, marginLeft: 16,
                        border: `1px solid ${allDayDone ? "#16a34a33" : "#1e293b"}`,
                        borderRadius: 10, overflow: "hidden",
                        background: allDayDone ? "#0a1a0f" : "#0a0f1a",
                        transition: "all 0.3s"
                      }}>
                        {/* Day header */}
                        <button onClick={() => toggleDay(dayKey)} style={{
                          width: "100%", background: "transparent",
                          border: "none", padding: "10px 14px",
                          cursor: "pointer", display: "flex",
                          justifyContent: "space-between", alignItems: "center",
                          fontFamily: "inherit", color: "#e2e8f0",
                        }}>
                          <div style={{ display: "flex", alignItems: "center", gap: 10 }}>
                            {allDayDone ? (
                              <span style={{ color: "#4ade80", fontSize: 14 }}>✓</span>
                            ) : (
                              <span style={{ color: "#334155", fontSize: 14 }}>○</span>
                            )}
                            <span style={{ fontWeight: 600, fontSize: 13 }}>{day.label}</span>
                            <span style={{ fontSize: 11, color: "#64748b" }}>{day.date}</span>
                          </div>
                          <div style={{ display: "flex", alignItems: "center", gap: 10 }}>
                            <span style={{ fontSize: 11, color: allDayDone ? "#4ade80" : "#64748b" }}>
                              {dayDone}/{day.tasks.length}
                            </span>
                            <span style={{ color: "#64748b", fontSize: 10, transform: isDayOpen ? "rotate(180deg)" : "none", transition: "0.2s" }}>▼</span>
                          </div>
                        </button>

                        {/* Tasks */}
                        {isDayOpen && (
                          <div style={{ padding: "0 14px 12px" }}>
                            {filteredTasks.map((task, ti) => {
                              const tagStyle = tagColors[task.tag] || tagColors.Review;
                              const isDone = checked[task.id];
                              return (
                                <div key={ti} onClick={() => toggle(task.id)} style={{
                                  display: "flex", gap: 12, padding: "10px 12px",
                                  marginBottom: 6, borderRadius: 8, cursor: "pointer",
                                  background: isDone ? "#0a1a0a" : "#0f172a",
                                  border: `1px solid ${isDone ? "#16a34a33" : "#1e293b"}`,
                                  transition: "all 0.2s",
                                  opacity: isDone ? 0.7 : 1,
                                }}>
                                  {/* Checkbox */}
                                  <div style={{
                                    width: 18, height: 18, borderRadius: 4, flexShrink: 0, marginTop: 1,
                                    border: `2px solid ${isDone ? "#4ade80" : "#334155"}`,
                                    background: isDone ? "#4ade80" : "transparent",
                                    display: "flex", alignItems: "center", justifyContent: "center",
                                    transition: "all 0.2s",
                                  }}>
                                    {isDone && <span style={{ color: "#0a0f1a", fontSize: 11, fontWeight: 700 }}>✓</span>}
                                  </div>

                                  <div style={{ flex: 1 }}>
                                    <div style={{ display: "flex", alignItems: "center", gap: 8, marginBottom: 4, flexWrap: "wrap" }}>
                                      <span style={{
                                        fontSize: 10, padding: "1px 7px", borderRadius: 99,
                                        background: tagStyle.bg, color: tagStyle.text,
                                        border: `1px solid ${tagStyle.border}44`,
                                        letterSpacing: 0.5,
                                      }}>{task.tag}</span>
                                      <span style={{
                                        fontSize: 10, color: timeColors[task.time] || "#94a3b8",
                                        opacity: 0.8
                                      }}>{task.time}</span>
                                    </div>
                                    <p style={{
                                      margin: "0 0 5px", fontSize: 13, lineHeight: 1.4,
                                      textDecoration: isDone ? "line-through" : "none",
                                      color: isDone ? "#475569" : "#cbd5e1",
                                    }}>{task.text}</p>
                                    <div style={{ display: "flex", alignItems: "center", gap: 5 }}>
                                      <span style={{ fontSize: 10, color: "#334155" }}>📚</span>
                                      <a
                                        href={task.url}
                                        target="_blank"
                                        rel="noopener noreferrer"
                                        onClick={e => e.stopPropagation()}
                                        style={{ fontSize: 10, color: "#3b82f6", fontStyle: "italic", textDecoration: "none", borderBottom: "1px dotted #3b82f644" }}
                                        onMouseEnter={e => e.target.style.color = "#60a5fa"}
                                        onMouseLeave={e => e.target.style.color = "#3b82f6"}
                                      >{task.resource} ↗</a>
                                    </div>
                                  </div>
                                </div>
                              );
                            })}
                          </div>
                        )}
                      </div>
                    );
                  })}
                </div>
              );
            })}
          </div>
        ))}

        <div style={{
          textAlign: "center", padding: "24px 0", color: "#334155", fontSize: 11,
          letterSpacing: 2, textTransform: "uppercase"
        }}>
          Phase 2 onwards coming soon · Keep going 🚀
        </div>
      </div>

      <style>{`
        @keyframes pulse {
          0%, 100% { opacity: 1; }
          50% { opacity: 0.4; }
        }
        * { box-sizing: border-box; }
        button:hover { opacity: 0.85; }
      `}</style>
    </div>
  );
}
