import 'package:flutter/material.dart';

class CustomShowTimePicker extends StatefulWidget{
  @override
  State<CustomShowTimePicker> createState() => _CustomShowTimePickerState();
}

class _CustomShowTimePickerState extends State<CustomShowTimePicker> {
  TimeOfDay? time=TimeOfDay(hour: 12, minute: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "${time!.hour.toString()} : ${time!.minute.toString()}",
          style: TextStyle(fontSize: 60),
        ),
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: () async{
          TimeOfDay? newTime= await showTimePicker(
              context: context,
              initialTime: time!,
            helpText: "clock",
            confirmText: "CONFIRM",
          );
          if(newTime!=null){
            setState(() {
              setState(() {
                time=newTime;
              });
            });
          }
        },
        child: Icon(
           Icons.access_time_outlined
        ),
      ),
    );
  }
}