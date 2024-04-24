import 'package:flutter/material.dart';

class CustomRangeSlider extends StatefulWidget {

   CustomRangeSlider({super.key});

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  RangeValues values=RangeValues(0.1,0.9);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels=RangeLabels(
             values.start.toString(),
             values.end.toString(),
    );

    return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: RangeSlider(
              values: values,
              divisions: 8,
              labels: labels,
                onChanged: (RangeValues value) {
                setState(() {
                   values=value;
                });
              },

            ),
          ),
    );
  }
}
