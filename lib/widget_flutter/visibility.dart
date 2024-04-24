

import 'package:flutter/material.dart';

class CustomVisibility extends StatefulWidget{
  @override
  State<CustomVisibility> createState() => _CustomVisibilityState();
}

class _CustomVisibilityState extends State<CustomVisibility> {
  bool _isvisible=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Visibility',
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        actions: [
          TextButton(onPressed: (){
            setState(() {
              _isvisible=!_isvisible;
            });
          }, child: Text("switch", style: TextStyle(color: Colors.white,),
          ))
        ],
      ),
      body: SizedBox(
          width: double.infinity,
          child: Center(
              child:
                 Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Image(image: AssetImage("assets/images/beard.jpg"), width: 200,height: 100,),
                     Visibility(
                         visible: _isvisible,
                         child:Image(image: AssetImage("assets/images/homepage_flower2.jpg")) ,
                     ),
                     Image(image: AssetImage("assets/images/beard.jpg"), width: 200,height: 100,),


                   ],
                 )
          )
      ),
    );
  }
}