import 'package:flutter/material.dart';
import '../screens/quest_detail_screen.dart';

class QuestCard extends StatelessWidget {
  final String title;
  final String category;
  final int xp;

  const QuestCard({
    super.key,
    required this.title,
    required this.category,
    required this.xp,
  });

  // Helper method to dynamically return the correct image path based on the quest title
  String? _getQuestImagePath() {
    if (title == "Dart Basics") {
      // Points exactly to your new file! Update the extension (.jpg or .png) to match your file precisely.
      return 'assets/images/quest_dart';
    }
    // You can add more mappings here later like:
    // if (title == "Flutter Layouts") return 'assets/images/quest_layouts.jpg';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final imagePath = _getQuestImagePath();

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        // Add a clean background image decoration to the card
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: imagePath != null
              ? DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
            // Adds a subtle dark layer over the image so the white text stays perfectly readable
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.15),
              BlendMode.darken,
            ),
          )
              : null, // No image layout fallback
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                category,
                style: TextStyle(
                  color: imagePath != null ? Colors.white70 : Colors.deepPurple.shade300,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: imagePath != null ? Colors.white : Colors.black87,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "+$xp XP",
                    style: TextStyle(
                      color: imagePath != null ? Colors.lightGreenAccent.shade400 : Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuestDetailScreen(
                            title: title,
                            category: category,
                            xp: xp,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      backgroundColor: imagePath != null ? Colors.white : null,
                      foregroundColor: imagePath != null ? Colors.deepPurple : null,
                    ),
                    child: const Text("Start"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}