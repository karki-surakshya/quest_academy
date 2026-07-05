// Placeholder structure for Achievements
class Achievement {
  final String title;
  final String icon;
  Achievement({required this.title, required this.icon});
}

// Placeholder structure for Quests
class Quest {
  final String title;
  final String category;
  final int xp;
  Quest({required this.title, required this.category, required this.xp});
}

final List<Achievement> dummyAchievements = [
  Achievement(title: "First Code", icon: "🏆"),
  Achievement(title: "Streak Master", icon: "🔥"),
  Achievement(title: "Bug Hunter", icon: "🐛"),
];

final List<Quest> dummyQuests = [
  Quest(title: "Dart Basics", category: "Language", xp: 40),
  Quest(title: "Flutter Layouts", category: "UI Design", xp: 50),
  Quest(title: "State Management", category: "Logic", xp: 60),
  Quest(title: "API Integration", category: "Advanced", xp: 100),
];