import 'package:flutter/material.dart';

Widget getDrawer(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  return (Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
    DrawerHeader(
        child: Row(children: <Widget>[
      CircleAvatar(
          radius: 50.0,
          backgroundColor: Colors.amber[50],
          child: Icon(
            Icons.person,
            size: 50.0,
            color: Colors.orange[700],
          )),
      Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 10.0),
        child: Container(
          child: Column(children: <Widget>[
            Text(
              "Hospital Management",
              style: TextStyle(
                fontFamily: 'Roboto,',
                color: Colors.black,
                fontSize: 18,
              ),
            )
          ]),
        ),
      ),
    ])),
    getSeparateDivider(),
    SizedBox(
      height: screenHeight * 0.02,
    ),
    MaterialButton(
        highlightColor: Colors.orange[800],
        splashColor: Colors.orange[800],
        child: Row(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.1),
            child: Text(
              'Emergencies',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontFamily: 'Roboto',
                fontSize: 20.0,
              ),
            ),
          )
        ]),
        onPressed: () {
          Navigator.of(context).pop();
        }),
    SizedBox(
      height: screenHeight * 0.02,
    ),
    MaterialButton(
        highlightColor: Colors.orange[800],
        splashColor: Colors.orange[800],
        child: Row(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.1),
            child: Text(
              'Patient Queue',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontFamily: 'Roboto',
                fontSize: 18.0,
              ),
            ),
          )
        ]),
        onPressed: () {
          Navigator.of(context).pop();
        }),
    SizedBox(
      height: screenHeight * 0.02,
    ),
    MaterialButton(
        highlightColor: Colors.orange[800],
        splashColor: Colors.orange[800],
        child: Row(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.1),
            child: Text(
              'Doctor\'s Details',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontFamily: 'Roboto',
                fontSize: 18.0,
              ),
            ),
          )
        ]),
        onPressed: () {
          Navigator.of(context).pop();
        }),
    SizedBox(
      height: screenHeight * 0.02,
    ),
    MaterialButton(
        highlightColor: Colors.orange[800],
        splashColor: Colors.orange[800],
        child: Row(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.1),
            child: Text(
              'Hospital Details',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontFamily: 'Roboto',
                fontSize: 18.0,
              ),
            ),
          )
        ]),
        onPressed: () {
          Navigator.of(context).pop();
        }),
    SizedBox(
      height: screenHeight * 0.02,
    ),
    MaterialButton(
        highlightColor: Colors.orange[800],
        splashColor: Colors.orange[800],
        child: Row(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.1),
            child: Text(
              'Inventory',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontFamily: 'Roboto',
                fontSize: 18.0,
              ),
            ),
          )
        ]),
        onPressed: () {
          Navigator.of(context).pop();
        }),
    SizedBox(
      height: screenHeight * 0.02,
    ),
  ])));
}

class Drawhorizontalline extends CustomPainter {
  Paint _paint;
  bool reverse;

  Drawhorizontalline(this.reverse) {
    _paint = Paint()
      ..color = Colors.black26
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(-180.0, 0.0), Offset(150.0, 0.0), _paint);
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
