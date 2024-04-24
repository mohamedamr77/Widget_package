import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSelectableText extends StatefulWidget{
  @override
  State<CustomSelectableText> createState() => _CustomSelectableTextState();
}

class _CustomSelectableTextState extends State<CustomSelectableText> {
  String selectedText="";

  final String _selectedableText="This is selectedable Text";

  TextStyle _styleBlue=TextStyle(
    color: Colors.blue,
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
  );

  TextStyle _style=TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Text(
                 selectedText,
                 style:_styleBlue ,
               ),
               TextSelectionTheme(
                 data: TextSelectionThemeData(
                   selectionColor: Colors.amberAccent,
                 ),
                 child: SelectableText(
                   _selectedableText,
                   style: _style,
                   onSelectionChanged: (selection,cause){
                     setState(() {
                       selectedText=_selectedableText.substring(
                         selection.start,
                         selection.end,
                       );
                     });
                   },
                 ),
               )
             ],
           ),
         ),
    );
  }
}