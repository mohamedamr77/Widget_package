import 'package:flutter/material.dart';

class CutomFittedBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 100,
          color: Colors.blueAccent,
          padding: EdgeInsets.all(10),
          child: FittedBox(
            child: Text(
              "Mohamed amr ",
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

}