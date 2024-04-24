import 'package:flutter/material.dart';

class CustomGridPaper extends StatelessWidget {
  const CustomGridPaper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: GridPaper(
           color: Colors.pink.withOpacity(0.5),
          divisions: 1,
          interval: 200,
          subdivisions:8,
        ),
      ),
    );
  }
}
