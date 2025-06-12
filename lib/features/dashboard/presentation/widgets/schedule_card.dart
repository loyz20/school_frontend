import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: ListTile(
        leading: const Icon(Icons.class_),
        title: const Text('Rekayasa Web Praktik'),
        subtitle: const Text('09:40 - 12:10 | Ruang E.3.3'),
        trailing: const Icon(Icons.check_circle, color: Colors.green),
      ),
    );
  }
}
