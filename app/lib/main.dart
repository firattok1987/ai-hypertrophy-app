import 'package:flutter/material.dart';
import 'screens/main_navigation.dart';

void main() {
  runApp(const AIHypertrophyApp());
}

class AIHypertrophyApp extends StatelessWidget {
  const AIHypertrophyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F0F12),
        primaryColor: Colors.deepPurple,
        colorScheme: const ColorScheme.dark(
          primary: Colors.deepPurple,
          secondary: Colors.purpleAccent,
        ),
        cardTheme: CardTheme(
          color: const Color(0xFF1C1C22),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      home: const MainNavigation(),
    );
  }
}
