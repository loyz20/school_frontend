import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/news1.png'),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Kegiatan Mahasiswa di Lab', style: TextStyle(fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
