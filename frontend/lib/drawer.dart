import 'package:flutter/material.dart';
import 'icons/icons.dart';

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
              'John Doe',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontFamily: 'Roboto',
                fontSize: 20.0,
              ),
            ),
            Text(
              'john.doe@gmail.com',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.black87,
                fontFamily: 'Roboto',
                fontSize: 15.0,
              ),
            ),
            Text(
              '9747386145',
              style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Roboto',
                fontSize: 15.0,
              ),
            ),
          ]),
        ),
      ),
    ])),
    getSeparateDivider(),
    SizedBox(height: screenHeight*0.02,),
    MaterialButton(
        highlightColor: Colors.orange[800],
        splashColor: Colors.orange[800],
        child: Row(children: <Widget>[
          Icon(MyFlutterApp.home),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.1),
            child: Text(
              'Home',
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
        SizedBox(height: screenHeight*0.02,),
    MaterialButton(
        highlightColor: Colors.orange[800],
        splashColor: Colors.orange[800],
        child: Row(children: <Widget>[
          Icon(Icons.add_alert),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.1),
            child: Text(
              'Report Emergency',
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
        SizedBox(height: screenHeight*0.02,),
    MaterialButton(
        highlightColor: Colors.orange[800],
        splashColor: Colors.orange[800],
        child: Row(children: <Widget>[
          Icon(MyFlutterApp.hospital),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.1),
            child: Text(
              'Hospitals',
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
        SizedBox(height: screenHeight*0.02,),
    MaterialButton(
        highlightColor: Colors.orange[800],
        splashColor: Colors.orange[800],
        child: Row(children: <Widget>[
          Icon(MyFlutterApp.doctor),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.1),
            child: Text(
              'Doctors',
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
        SizedBox(height: screenHeight*0.02,),
    MaterialButton(
        highlightColor: Colors.orange[800],
        splashColor: Colors.orange[800],
        child: Row(children: <Widget>[
          Icon(MyFlutterApp.medicine),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.1),
            child: Text(
              'Buy Medicines',
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
        SizedBox(height: screenHeight*0.02,),
    MaterialButton(
        highlightColor: Colors.orange[800],
        splashColor: Colors.orange[800],
        child: Row(children: <Widget>[
          Icon(Icons.report_problem),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.1),
            child: Text(
              'Report an Issue',
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
    
                Padding(
                  padding: const EdgeInsets.only(left:60.0,right:60.0),
                  child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  splashColor: Colors.purple,
                  color: Colors.blue[100],
                  onPressed: () {},
                  child: Text(
                        'Logout',
                        style: TextStyle(fontFamily: 'Roboto', fontSize: 20.0),
                      )),
                ),
                SizedBox(height: screenHeight*0.05,),
    getSeparateDivider(),
    MaterialButton(
        highlightColor: Colors.orange[800],
        splashColor: Colors.orange[800],
        child: Row(children: <Widget>[
          Icon(Icons.settings),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.1),
            child: Text(
              'App Settings',
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
