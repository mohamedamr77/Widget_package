

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
class Custom_Get_Widget extends StatefulWidget{
  @override
  State<Custom_Get_Widget> createState() => _Custom_Get_WidgetState();
}

class _Custom_Get_WidgetState extends State<Custom_Get_Widget> {
  @override

  Widget build(BuildContext context) {
    double change_value=0.53;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            GFProgressBar(
              percentage: 0.9,
              width: 120, // Increased width
              radius: 120, // Increased radius
              type: GFProgressType.circular,
              backgroundColor: Colors.black26,
              progressBarColor: GFColors.DANGER,
              circleWidth: 3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded( // Use Expanded to allow vertical expansion
                    child: Text(
                      "2", // Progress number
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
           GFIconButton(icon: Icon(Icons.abc), onPressed: (){}), GFToggle(onChanged: (value){}, value: true,
            type:GFToggleType.square,
            ),
            GFRating(onChanged: (rating){}, value: 1,

            ),
            GFMultiSelect(items:[
             "1",
             "2",
             "3",
             "4",
             "5",
            ] , onSelect: (item){print("Selected");},),
            GFButton(
              onPressed: (){},
              text: "primary",
              //blockButton: true,
              //shape: GFButtonShape.pills,
              //size: GFSize.LARGE,
              type: GFButtonType.outline,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                onTap: (){},
                decoration: InputDecoration(
                  hintText: "as,",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GFProgressBar(

                  percentage: change_value ,
                  backgroundColor : Colors.black26,
                  progressBarColor: GFColors.DANGER,
                  leading: Icon(Icons.sentiment_dissatisfied_outlined,
                color: Colors.red,
                ),
                  clipLinearGradient: true,
                  isDragable: true,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  lineHeight: 25,
                  circleWidth:100,
                  animation:true,
                 trailing:  Icon(Icons.sentiment_satisfied_alt,
                  color: Colors.red,

                ),
                child: Center(
                  child: Text("${(change_value * 100).toStringAsFixed(0)}%",
                      textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  ),
                ),
              ),
            ),
             SizedBox(height: 80,),
            GFProgressBar(
              percentage: 0.1,
              width: 120, // Increased width
              radius: 120, // Increased radius
              type: GFProgressType.circular,
              backgroundColor: GFColors.LIGHT,
              progressBarColor: GFColors.SUCCESS,
              circleWidth: 10,
              leading: Text("90%",
              style: TextStyle(
                color:  Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              ),
              trailing:  Icon(Icons.sentiment_dissatisfied_rounded,
              color: Colors.green,
              ),

            ),



          ],
        ),
      ),
    );
  }
}