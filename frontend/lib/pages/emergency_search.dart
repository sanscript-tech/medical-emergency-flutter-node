import 'package:flutter/material.dart';

class EmergencySearch extends StatefulWidget {
  @override
  _EmergencySearchState createState() => _EmergencySearchState();
}

class _EmergencySearchState extends State<EmergencySearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.view_headline),
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          "HelloDoc",
          style: TextStyle(fontFamily: "MyFlutterApp"),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Emergency Search",
              style: TextStyle(fontFamily: "MyFlutterApp"),
            ),
            Row(
              children: <Widget>[
                Container(
                  child: Column(children: <Widget>[
                    Text(
                      "Your Location",
                      style: TextStyle(fontFamily: "Roboto"),
                    ),
                  ]),
                ),
                RaisedButton(
                    color: Colors.blue[300],
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text('Select Issue'),
                        Icon(Icons.arrow_downward),
                      ],
                    ))
              ],
            ),
            RaisedButton(
                color: Colors.orange,
                onPressed: () {},
                child: Text('Search Hospital',
                    style: TextStyle(color: Colors.white))),
            getSeparateDivider(),
            Text(
              "Rapid Shortcut",
              style: TextStyle(fontFamily: "MyFlutterApp"),
            ),
            Container(),
            getSeparateDivider(),
            Text(
              "Nearest Best Hospital",
              style: TextStyle(fontFamily: "MyFlutterApp"),
            ),
            getSeparateDivider(),
            Text(
              "Nearest Best Doctor",
              style: TextStyle(fontFamily: "MyFlutterApp"),
            ),
          ]),
    );
  }
}

//Horizontal line

class Drawhorizontalline extends CustomPainter {
  Paint _paint;
  bool reverse;

  Drawhorizontalline(this.reverse) {
    _paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    if (reverse) {
      canvas.drawLine(Offset(-250.0, 0.0), Offset(-10.0, 0.0), _paint);
    } else {
      canvas.drawLine(Offset(10.0, 0.0), Offset(250.0, 0.0), _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

Widget getSeparateDivider() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      CustomPaint(painter: Drawhorizontalline(true)),
    
    ],
  );
}
