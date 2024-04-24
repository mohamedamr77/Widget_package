import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomAnimatedCrossFated extends StatefulWidget{
  @override
  State<CustomAnimatedCrossFated> createState() => _CustomAnimatedCrossFatedState();
}
class _CustomAnimatedCrossFatedState extends State<CustomAnimatedCrossFated> {
  bool _bool=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Map"),
        actions: [
          TextButton(onPressed: (){
            setState(() {
              _bool=!_bool;
            });
          },
              child:Text("switch",
              style: TextStyle(
                color: Colors.white,
              ),
              )
          ),
        ],
      ),
      body: Center(
          child:
          AnimatedCrossFade(
              firstChild: Image(image: AssetImage("assets/images/beard.jpg"),
              width: 350,
              ),
              secondChild: Image(image: AssetImage("assets/images/homepage_flower2.jpg"),
              width: 200,
              ),
              crossFadeState:
              _bool? CrossFadeState.showFirst:CrossFadeState.showSecond,
              duration: Duration(seconds: 1))) ,
    );
  }
}