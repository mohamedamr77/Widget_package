import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAdaptive extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(),
       body: Center(
         child: Column(
           children: [
             Slider.adaptive(
               onChanged: (value) {},
               value: 1,
             ),
             SwitchListTile.adaptive(
               title: Text("Dark"),
                 value: true, onChanged: (bool newValue){

             }
             ),
             Switch.adaptive(value: true, onChanged: (bool newValue){}),
             Icon(
               Icons.adaptive.share,
             ),
             CircularProgressIndicator(),
           ],
         ),
       ),
     );
  }

}