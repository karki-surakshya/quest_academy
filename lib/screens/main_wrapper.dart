import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import '../widgets/drawer_widget.dart'; // We will create this next

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  // Track the currently active tab index
  int _currentIndex = 0;

  // List of screens to display corresponding to each tab
  final List<Widget> _screens = [
    const HomeScreen(),
    const Center(child: Text("Search Screen Placeholder")), // Bonus challenge slot
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The shared App Drawer accessible from any primary tab
      drawer: const DrawerWidget(),

      // Dynamically displays the screen matching the active index
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),

      // Global persistent Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Updates state to switch views
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}