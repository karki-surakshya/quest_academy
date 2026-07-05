import 'package:flutter/material.dart';
import '../widgets/carousel_widget.dart';
import '../widgets/achievement_card.dart';
// Added missing import for QuestCard to resolve the undefined method error
import '../widgets/quest_card.dart';
import '../utils/dummy_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quest Academy"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome Back!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Continue learning today",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 20),

              // Banner Carousel
              const CarouselWidget(),

              const SizedBox(height: 24),
              const Text(
                "Recent Achievements",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),

              // Achievements Horizontal ListView
              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dummyAchievements.length,
                  itemBuilder: (context, index) {
                    final achievement = dummyAchievements[index];
                    return AchievementCard(
                      title: achievement.title,
                      icon: achievement.icon,
                    );
                  },
                ),
              ),

              const SizedBox(height: 24),
              const Text(
                "Available Quests",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),

              // Available Quests GridView
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.1,
                ),
                itemCount: dummyQuests.length,
                itemBuilder: (context, index) {
                  final quest = dummyQuests[index];
                  return QuestCard(
                    title: quest.title,
                    category: quest.category,
                    xp: quest.xp,
                  );
                },
              ),
            ], // Closed the Column's children array cleanly
          ),
        ),
      ),
    );
  }
}