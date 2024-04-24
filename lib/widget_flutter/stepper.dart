import 'package:flutter/material.dart';

class CustomStepperWidget extends StatefulWidget{
  @override
  State<CustomStepperWidget> createState() => _CustomStepperWidgetState();
}

class _CustomStepperWidgetState extends State<CustomStepperWidget> {
  int currentstep=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Stepper(

          steps: [
               Step(
                   title: Text("Step 1"),
                   content: Text("Information for Step 1")),
               Step(
                title: Text("Step 2"),
                content: Text("Information for Step 2")),
               Step(
                title: Text("Step 3"),
                content: Text("Information for Step 2")),
               Step(
                title: Text("Step 4"),
                content: Text("Information for Step 4")),
        ],

          onStepTapped: (int index){
            setState(() {
              currentstep=index;
            });
          },

          currentStep: currentstep,

          onStepContinue: (){
            if (currentstep!=3){
              setState(() {
                currentstep++;
              });
            }
          },

          onStepCancel: (){
            if(currentstep!=0){
              setState(() {
                currentstep-=1;
              });
            }
          },
        ),
      ) ,
    );
  }
}