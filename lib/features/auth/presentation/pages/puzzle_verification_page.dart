import 'package:flutter/material.dart';
import 'package:school_frontend/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:slider_captcha/slider_captcha.dart';

class PuzzleVerificationPage extends StatefulWidget {
  const PuzzleVerificationPage({super.key});

  @override
  State<PuzzleVerificationPage> createState() => _PuzzleVerificationPageState();
}

class _PuzzleVerificationPageState extends State<PuzzleVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7F8),
      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Verifikasi Puzzle',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 20),
              SliderCaptcha(
                image: Image.asset("images/puzzle_bg.png"),
                colorBar: Colors.teal,
                colorCaptChar: Colors.white,
                onConfirm: (value) async {
                  if (!mounted) return; // pastikan widget masih aktif

                  if (value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('✅ Verifikasi berhasil')),
                    );
                    await Future.delayed(const Duration(milliseconds: 500));

                  if (!mounted) return;
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const DashboardPage()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('❌ Gagal, coba lagi')),
                    );
                  }
                },
              ),
              const SizedBox(height: 24),
              const Text(
                '🔗 Hubungi Admin',
                style: TextStyle(color: Colors.teal, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
