import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/activity_menu.dart';
import '../widgets/schedule_card.dart';
import '../widgets/news_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7F8),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner), label: 'Presensi'),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Berita'),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              ProfileHeader(),
              SizedBox(height: 8),
              ActivityMenu(),
              SizedBox(height: 16),
              ScheduleCard(),
              SizedBox(height: 16),
              NewsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
