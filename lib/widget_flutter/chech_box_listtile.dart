import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomCheckBoxListTile extends StatefulWidget{
  @override
  State<CustomCheckBoxListTile> createState() => _CustomCheckBoxListTileState();
}
class _CustomCheckBoxListTileState extends State<CustomCheckBoxListTile> {
  bool? _isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child:CheckboxListTile(
          value: _isChecked,
          onChanged: (bool? value) {
            setState(() {
              _isChecked=value;
            });
          },
          title: Text("Check Box"),
          activeColor: Colors.pink,
          checkColor: Colors.white,
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
          subtitle: Text("Subtitle"),


        ) ,
      ) ,
    );
  }
}