import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TableRow _tableRow=TableRow(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Cell 1"),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Cell 2"),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Cell 3"),
        ),
      ]
    );
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Table(
            border: TableBorder.all(
              borderRadius: BorderRadius.circular(20)
            ),
            //defaultColumnWidth: FixedColumnWidth(120),
            children: <TableRow>[
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
            ],
          ),
        ),
      ),

    );
  }
}