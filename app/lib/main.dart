import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;

  final screens = const [
    HomeScreen(),
    ProgramGeneratorScreen(),
    WorkoutTrackerScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.auto_awesome), label: "AI Program"),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: "Tracker"),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "AI Hypertrophy App",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class ProgramGeneratorScreen extends StatefulWidget {
  const ProgramGeneratorScreen({super.key});

  @override
  State<ProgramGeneratorScreen> createState() => _ProgramGeneratorScreenState();
}

class _ProgramGeneratorScreenState extends State<ProgramGeneratorScreen> {
  String result = "";

  void generateProgram() {
    setState(() {
      result = """
Day 1 - Chest & Triceps
Bench Press 4x8
Incline DB Press 3x10
Cable Fly 3x12

Day 2 - Back & Biceps
Pull Ups 4x8
Barbell Row 3x8
Barbell Curl 3x12

Progressive Overload:
Increase weight +2.5kg when reps are completed.
""";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AI Program Generator")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: generateProgram,
              child: const Text("Generate Program"),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Text(result),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WorkoutTrackerScreen extends StatefulWidget {
  const WorkoutTrackerScreen({super.key});

  @override
  State<WorkoutTrackerScreen> createState() => _WorkoutTrackerScreenState();
}

class _WorkoutTrackerScreenState extends State<WorkoutTrackerScreen> {
  final TextEditingController weightController = TextEditingController();
  final TextEditingController repsController = TextEditingController();

  String log = "";

  void saveSet() {
    setState(() {
      log +=
          "Weight: ${weightController.text} kg | Reps: ${repsController.text}\n";
      weightController.clear();
      repsController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Workout Tracker")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: weightController,
              decoration: const InputDecoration(labelText: "Weight (kg)"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: repsController,
              decoration: const InputDecoration(labelText: "Reps"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: saveSet,
              child: const Text("Save Set"),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Text(log),
              ),
            )
          ],
        ),
      ),
    );
  }
}
