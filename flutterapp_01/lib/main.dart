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
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  ContainerWidget(Colors.orange, Colors.black, 'Container 1',
                      Colors.black, 14),
                  RotationTransition(
                    turns: AlwaysStoppedAnimation(45 / 360),
                    child: ContainerWidget(Colors.white, Colors.white,
                        'Container 2', Colors.black, 14),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.yellow),
                        color: Colors.yellow,
                      ),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Container 3',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.blue),
                        color: Colors.blue,
                      ),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Container 4',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    //ContainerWidget(Colors.blue, Colors.blue,
                    //'Container 4', Colors.black, 14),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Container(
                      //margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.white),
                          color: Colors.black,
                          shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          'Container 5',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.red),
                          color: Colors.red),
                      child: Text(
                        'Con 6',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

//margin: EdgeInsets.all(100.0)
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
      child: Center(
        child: Text(
          textInside,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
      alignment: Alignment(1, 1),
    );
  }
}
