import 'package:flutter/material.dart';
import 'package:newpackage/package_flutter/get_widget.dart';
import 'package:newpackage/widget_flutter/choice_chip.dart';
import 'package:newpackage/widget_flutter/drop_down_menu.dart';
import 'package:newpackage/widget_flutter/expansion_tile.dart';
import 'package:newpackage/widget_flutter/hero.dart';
import 'package:newpackage/widget_flutter/pop_up_menu_button.dart';
import 'package:newpackage/widget_flutter/show_date_picker.dart';
import 'package:newpackage/widget_flutter/show_model_bottom_sheet.dart';
import 'package:newpackage/widget_flutter/show_search.dart';
import 'package:newpackage/widget_flutter/sliver_app_bar.dart';
import 'package:newpackage/widget_flutter/stepper.dart';

import 'widget_flutter/preferred_size.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:CustomStepperWidget(),
    );
  }

}