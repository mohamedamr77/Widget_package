import 'package:flutter/material.dart';

class HomePageHero extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CustomPageRoute() ));
        },
        child: Hero(
          tag: "beard",
          child: Image(
            image: AssetImage("assets/images/beard.jpg"),
            width: 200,
          ),
        ),
      ),
    );
  }

}

class CustomPageRoute extends StatelessWidget{
  const CustomPageRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag: "beard",
        child: Image(
          image: AssetImage("assets/images/beard.jpg"),
        ),
      ),
    );
  }

}
