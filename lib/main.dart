import 'package:flutter/material.dart';
import 'package:newpackage/widget_flutter/drop_down_menu.dart';
import 'package:newpackage/widget_flutter/show_model_bottom_sheet.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:CustomDropdown(),
    );
  }

}