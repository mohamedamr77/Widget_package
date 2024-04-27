import 'package:flutter/material.dart';
import 'package:newpackage/package_flutter/get_widget.dart';
import 'package:newpackage/widget_flutter/drop_down_menu.dart';
import 'package:newpackage/widget_flutter/show_model_bottom_sheet.dart';

import 'widget_flutter/preferred_size.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Custom_Get_Widget(),
    );
  }

}