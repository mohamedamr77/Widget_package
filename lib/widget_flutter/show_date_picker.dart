import 'package:flutter/material.dart';

class CustomShowDatePicker extends StatefulWidget {
   CustomShowDatePicker({super.key});

  @override
  State<CustomShowDatePicker> createState() => _CustomShowDatePickerState();
}

class _CustomShowDatePickerState extends State<CustomShowDatePicker> {
  DateTime _dateTime=DateTime(2000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("${_dateTime.day} - ${_dateTime.month} - ${_dateTime.year}",
            style: TextStyle(
              fontSize: 30,
            ),
            ),
             ElevatedButton(
                 onPressed: ()async{
                  DateTime? _newDate=await showDatePicker(
                      context: context,
                      initialDate: _dateTime,
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2025),
                  ) ;
                  if(_newDate!=null){
                    setState(() {
                      _dateTime=_newDate;
                    });
                  }
                 },
                 child: Text("Get Date"),
             )
          ],
        ),
      ),
    );
  }
}
