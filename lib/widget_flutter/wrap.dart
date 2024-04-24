import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWrap extends StatelessWidget{
  Widget _image=Padding(
      padding: EdgeInsets.all(10),
      child: Image(image: AssetImage("assets/images/beard.jpg"),
      width: 160,
      ),
  );
  @override
  Widget build(BuildContext context) {
    List<Widget> _list=[_image,_image,_image,_image,_image,_image,_image,];
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Wrap(
          children: _list,
        )
      ),
    );
  }

}