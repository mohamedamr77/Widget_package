import 'package:flutter/material.dart';

class CustomShowModelBottomSheet extends StatelessWidget {
  const CustomShowModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
             showModalBottomSheet(
               shape: const RoundedRectangleBorder(
               borderRadius: BorderRadius.vertical(
                 top: Radius.circular(20.0),
               )
               ),
                 context: context,
                 builder: (context) {
                   return SizedBox(
                     height: 400,
                     child: Center(
                       child: ElevatedButton(
                         onPressed: () {
                           Navigator.of(context).pop();
                         },
                         child: const Text('Close'),
                       ),
                     ),
                   );
                 },
             );
          },
          child: Text("Model Bottom Sheet"),

        ),
      ),
    );
  }
}
