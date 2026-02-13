import 'package:flutter/material.dart';

class TrackerScreen extends StatelessWidget {
  const TrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Workout Tracker",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    );
  }
}
