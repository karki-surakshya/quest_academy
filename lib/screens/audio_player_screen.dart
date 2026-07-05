import 'package:flutter/material.dart';
import 'reward_screen.dart'; // Import the reward celebration screen

class AudioPlayerScreen extends StatelessWidget {
  // 1. Declare the variable to accept the dynamic XP data from the detail screen
  final int xpReward;

  // 2. Add it to the constructor parameters
  const AudioPlayerScreen({super.key, required this.xpReward});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Audio Playing"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.audiotrack, size: 80, color: Colors.deepPurple),
              const SizedBox(height: 16),
              const Text(
                "Memory Game 40_30",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Text(
                "success.mp3",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 40),

              // Play Button Control
              IconButton(
                icon: const Icon(Icons.play_circle_fill, size: 84, color: Colors.deepPurple),
                onPressed: () {
                  // Show a quick confirmation snackbar notification
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Playing local success.mp3 asset..."),
                      duration: Duration(seconds: 1),
                    ),
                  );

                  // Simulate the audio track playing for 2 seconds, then automatically push to RewardScreen
                  Future.delayed(const Duration(seconds: 2), () {
                    if (context.mounted) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          // Pass the data cleanly into the RewardScreen constructor!
                          builder: (context) => RewardScreen(xpReward: xpReward),
                        ),
                      );
                    }
                  });
                },
              ),
              const SizedBox(height: 12),
              const Text("Tap to play audio & claim rewards", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}