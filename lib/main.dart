import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/main_wrapper.dart';

void main() {
  runApp(const QuestAcademy());
}

class QuestAcademy extends StatelessWidget {
  const QuestAcademy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quest Academy',
      home: const MainWrapper(),
    );
  }
}