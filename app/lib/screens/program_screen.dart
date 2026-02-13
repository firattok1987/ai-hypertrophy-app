import 'package:flutter/material.dart';

class ProgramScreen extends StatelessWidget {
  const ProgramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("AI Program Generator",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    );
  }
}
