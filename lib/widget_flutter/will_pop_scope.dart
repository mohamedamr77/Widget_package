import 'package:flutter/material.dart';

class CustomWillPopScope extends StatelessWidget {
  const CustomWillPopScope({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar:AppBar(
        title: Text("WillPopScope"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CustomPageRoute(),));
          }, icon: Icon(
            Icons.forward,
          ))
        ],
      ),


    );
  }
}

class CustomPageRoute extends StatelessWidget{
  const CustomPageRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed:(){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios_new),
            
          ),
        ),
        body: Image(
          image: AssetImage("assets/images/beard.jpg"),
        ),
      ),
    );
  }

}