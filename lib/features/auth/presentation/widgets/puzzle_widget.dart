import 'package:flutter/material.dart';

class PuzzleWidget extends StatefulWidget {
  const PuzzleWidget({super.key});

  @override
  State<PuzzleWidget> createState() => _PuzzleWidgetState();
}

class _PuzzleWidgetState extends State<PuzzleWidget> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Icon(Icons.extension, size: 60, color: Colors.white),
              ),
            ),
            Positioned(
              right: 8,
              top: 8,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _sliderValue = 0;
                  });
                },
                child: const Icon(Icons.refresh, color: Colors.white),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Text('Match the puzzle'),
        const SizedBox(height: 16),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 14),
            overlayShape: SliderComponentShape.noOverlay,
          ),
          child: Slider(
            value: _sliderValue,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
            onChangeEnd: (value) {
              if ((value - 0.75).abs() < 0.05) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Berhasil mencocokkan!')),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Belum cocok, coba lagi.')),
                );
              }
            },
            min: 0,
            max: 1,
          ),
        ),
      ],
    );
  }
}
