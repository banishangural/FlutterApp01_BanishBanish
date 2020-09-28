import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
          //default route
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text("Row and Column Widgets"),
            backgroundColor: Colors.blue,
          ),
          body: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  ContainerWidget(Colors.green, 'abc'),
                ],
              )
            ],
          )),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  final Color bgColor;
  final String textInBox;
  ContainerWidget(this.bgColor, this.textInBox);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(width: 3),
        color: bgColor,
      ),
    );
  }
}
