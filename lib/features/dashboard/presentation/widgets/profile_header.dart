import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.teal,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg'),
            radius: 30,
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Jonathan', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              Text('5161011016', style: TextStyle(color: Colors.white70)),
            ],
          ),
          const Spacer(),
          const Icon(Icons.notifications, color: Colors.white),
          const SizedBox(width: 8),
          const Icon(Icons.settings, color: Colors.white),
        ],
      ),
    );
  }
}
