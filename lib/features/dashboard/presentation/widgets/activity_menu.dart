import 'package:flutter/material.dart';

class ActivityMenu extends StatelessWidget {
  const ActivityMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        Icon(Icons.schedule, size: 32, color: Colors.teal),
        Icon(Icons.emoji_events, size: 32, color: Colors.teal),
        Icon(Icons.grade, size: 32, color: Colors.teal),
        Icon(Icons.school, size: 32, color: Colors.teal),
      ],
    );
  }
}
