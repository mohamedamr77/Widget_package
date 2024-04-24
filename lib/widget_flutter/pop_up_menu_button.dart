import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomPopUpMenuButton extends StatefulWidget{
  @override
  State<CustomPopUpMenuButton> createState() => _CustomPopUpMenuButtonState();
}

class _CustomPopUpMenuButtonState extends State<CustomPopUpMenuButton> {
  String title="firstPage";

  String firstPage="firstPage";

  String secondPage="secondPage";

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text(title),
       actions: [
         PopupMenuButton(itemBuilder: (context) => [
           PopupMenuItem(child: Text(firstPage), value: firstPage, onTap: (){}),
           PopupMenuItem(child: Text(secondPage), value: secondPage,onTap: (){}),
         ],
           onSelected: (String newValue){
           setState(() {
             title=newValue;
           });
           },
           position: PopupMenuPosition.over,
         )
       ],

     ),
     body: Column(),
   );
  }
}