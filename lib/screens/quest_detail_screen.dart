import 'package:flutter/material.dart';
import 'audio_player_screen.dart';

class QuestDetailScreen extends StatelessWidget {
  final String title;
  final String category;
  final int xp;

  const QuestDetailScreen({
    super.key,
    required this.title,
    required this.category,
    required this.xp,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Category Badge Box
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                category.toUpperCase(),
                style: TextStyle(
                  color: Colors.deepPurple.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Title Display
            Text(
              title,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // XP Reward Indicator
            Text(
              "Reward: $xp XP",
              style: const TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Description Context placeholder
            const Text(
              "Quest Objective:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Complete this interactive learning milestone to validate your practical domain logic skills, unlock your next track achievement milestone, and earn exclusive bonus experience points.",
              style: TextStyle(color: Colors.grey, fontSize: 15, height: 1.4),
            ),

            const Spacer(), // Pushes the action button firmly to the bottom boundary

            // Core Action Trigger
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate over to the Audio Player Screen and pass the dynamic xp value forward
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AudioPlayerScreen(xpReward: xp),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text("Complete Quest & Verify", style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}