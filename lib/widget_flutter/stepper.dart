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
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Stepper(
            steps: [
                 Step(
                     title: Text("نصيحه 1"),
                     content: Align(
                         alignment: Alignment.centerRight,
                         child: Text("تقسيم الوجبات على مدار اليوم مثلا وجبة الغداء لاتتناولها على مرة واحدة (لاتتناولها حتى تشبع)بل تناولها على عدة مرات.",textAlign: TextAlign.right,textDirection: TextDirection.rtl,))),
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
        ),
      ) ,
    );
  }
}