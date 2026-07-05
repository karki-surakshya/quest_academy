import 'package:flutter/material.dart';
import 'main_wrapper.dart'; // To navigate back to the main app dashboard

class RewardScreen extends StatelessWidget {
  final int xpReward;

  const RewardScreen({super.key, required this.xpReward});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Celebration Trophy/Icon
              const Icon(
                Icons.emoji_events,
                size: 100,
                color: Colors.amber,
              ),
              const SizedBox(height: 24),

              const Text(
                "Congratulations!",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              const Text(
                "You have successfully completed the quest!",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 24),

              // Dynamic XP Badge
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.green, width: 2),
                ),
                child: Text(
                  "+$xpReward XP",
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 48),

              // Button to go back home
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Reset back to the Main Screen flow completely
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const MainWrapper()),
                          (route) => false,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Text("Back to Dashboard"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}