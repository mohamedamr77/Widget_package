import 'package:flutter/material.dart';

class CustomPreferredSize extends StatelessWidget {
  const CustomPreferredSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(80),
        child: Container(
          height: 110,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.white,
                Colors.black,
              ],

            )
          ),
          child: SafeArea(
            child: ListTile(
              title: Text("Flutter map",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              ),
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(Icons.search,
                color: Colors.white,
                ),
              ),
            ),
          ),
        ),

      ),
    );
  }
}
