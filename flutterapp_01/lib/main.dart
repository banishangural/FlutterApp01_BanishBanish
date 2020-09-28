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
                  ContainerWidget(Colors.orange, Colors.black, 'Container 1',
                      Colors.black, 14),
                  ContainerWidget(Colors.white, Colors.white, 'Container 2',
                      Colors.black, 14)
                ],
              ),
              Column(
                children: <Widget>[
                  ContainerWidget(Colors.yellow, Colors.yellow, 'Container 3',
                      Colors.black, 14),
                  ContainerWidget(
                      Colors.blue, Colors.blue, 'Container 4', Colors.black, 14)
                ],
              ),
              Column(
                children: <Widget>[
                  ContainerWidget(Colors.black, Colors.white, 'Container 5',
                      Colors.white, 14),
                ],
              )
            ],
          )),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  final Color bgColor;
  final Color borderColor;
  final String textInside;
  final Color textColor;
  final double fontSize;
  ContainerWidget(this.bgColor, this.borderColor, this.textInside,
      this.textColor, this.fontSize);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: borderColor),
        color: bgColor,
      ),
      child: Text(
        textInside,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
