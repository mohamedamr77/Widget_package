import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Alert"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
             showDialog(context: context, builder: (context) {
              return AlertDialog(
                 actions: [
                   TextButton(onPressed: (){
                     Navigator.of(context).pop();
                   }, child: Text("Close"))
                 ],
                title: Text("Alert Dialog"),
                content: Text("This is the Alert Doalog"),
               );
             },
             );
          },
          child:Text("Show Diaolg") ,
        ),
      ),
    );
  }
}
