import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
   CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
int _currentIndex=0;
   List <Widget> body=[
     Center(child: Icon(Icons.home)),
     Center(child: Icon(Icons.search)),
     Center(child: Icon(Icons.person)),
   ];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (newIndex){
          setState(() {
            _currentIndex=newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Account",
          ),
        ],
      ),
      body: body[_currentIndex],
    );
  }
}
