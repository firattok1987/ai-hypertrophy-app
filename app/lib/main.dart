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
        colorScheme: const ColorScheme.dark(
          primary: Colors.deepPurple,
          secondary: Colors.purpleAccent,
        ),
        cardTheme: const CardThemeData(
          color: Color(0xFF1C1C22),
        ),
      ),
      home: const MainNavigation(),
    );
  }
}
