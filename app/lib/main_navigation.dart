import 'package:flutter/material.dart';
import 'dashboard_screen.dart';
import 'tracker_screen.dart';
import 'program_screen.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _index = 0;

  final screens = const [
    DashboardScreen(),
    ProgramScreen(),
    TrackerScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1C1C22),
        currentIndex: _index,
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.grey,
        onTap: (value) => setState(() => _index = value),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_awesome), label: "AI"),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center), label: "Tracker"),
        ],
      ),
    );
  }
}
