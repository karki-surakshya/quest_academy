import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Branding Header Box
          UserAccountsDrawerHeader(
            accountName: const Text(
              "Quest Academy",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            accountEmail: const Text("Learn. Play. Level Up."),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.school, size: 40, color: Colors.deepPurple.shade400),
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade400,
            ),
          ),

          // Navigation Row Items
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home Dashboard"),
            onTap: () {
              Navigator.pop(context); // Closes the drawer drawer slide panel
            },
          ),
          ListTile(
            leading: const Icon(Icons.audiotrack),
            title: const Text("Audio Lab"),
            onTap: () {
              Navigator.pop(context);
              // TODO: Wire up route navigation to audio screen here later
            },
          ),
          ListTile(
            leading: const Icon(Icons.emoji_events),
            title: const Text("My Rewards"),
            onTap: () {
              Navigator.pop(context);
              // TODO: Wire up navigation to reward screen later
            },
          ),
          const Divider(), // Clean split line line break separator
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text("Log Out", style: TextStyle(color: Colors.red)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}