import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomChoiceChip extends StatefulWidget{
  @override
  State<CustomChoiceChip> createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<CustomChoiceChip> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ChoiceChip(
          avatar: Icon(Icons.access_alarm),
          backgroundColor: Colors.blue,
          label: Text("Choice Chip"),
          selected: _isSelected,
          onSelected: (newBoolValue){
            setState(() {
              _isSelected = newBoolValue;
            });
          },

        ),
      ),

    );
  }
}