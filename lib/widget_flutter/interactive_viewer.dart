import 'package:flutter/material.dart';

class CustomInteractiveViewer extends StatelessWidget {
  const CustomInteractiveViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: InteractiveViewer(
            maxScale: 4,
            child: Image(image: AssetImage("assets/images/beard.jpg"),),)),
    );
  }
}
