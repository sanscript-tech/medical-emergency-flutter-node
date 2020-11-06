import 'dart:ui';

import 'package:flutter/material.dart';

class EmergencySearch extends StatefulWidget {
  @override
  _EmergencySearchState createState() => _EmergencySearchState();
}

class _EmergencySearchState extends State<EmergencySearch> {
  Color _color = Colors.red[100];
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.view_headline),
        backgroundColor: Colors.orangeAccent[700],
        centerTitle: true,
        title: Text(
          "HelloDoc",
          style: TextStyle(fontFamily: "MyFlutterApp"),
        ),
      ),
      body: ListView(shrinkWrap: true, children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              "Emergency Search",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "Roboto",
                  fontSize: 22.0),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 10.0),
              child: Container(
                child: Column(children: <Widget>[
                  Text(
                    "Your Location",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto",
                        fontSize: 15.0),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      Container(
                        height: 30.0,
                        width: 80.0,
                        child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Boston ,US',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0))),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                splashColor: Colors.purple,
                color: Colors.blueAccent[100],
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Select Issue',
                        style: TextStyle(fontFamily: 'Roboto', fontSize: 20.0),
                      ),
                      Icon(Icons.arrow_downward),
                    ],
                  ),
                ))
          ],
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55.0, right: 55.0),
          child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              splashColor: Colors.purple,
              elevation: 10.0,
              color: Colors.orangeAccent[700],
              onPressed: () {},
              child: Text('Search Hospital',
                  style: TextStyle(color: Colors.white, fontSize: 18.0))),
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        getSeparateDivider(),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        Center(
          child: Text(
            "Rapid Shortcut",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontSize: 22.0),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.015,
        ),
        Container(
          height: screenHeight * 0.2,
          child: GridView.count(
            padding: EdgeInsets.only(left: 30.0),
            scrollDirection: Axis.horizontal,
            crossAxisCount: 2,
            children: <Widget>[
              AnimatedContainer(
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Text(
                    'Heart \n Attack',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
                  ),
                ),
                duration: Duration(seconds: 2),
                decoration: BoxDecoration(
                    color: isSelected ? Colors.grey[350] : _color,
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              AnimatedContainer(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 20.0),
                  child: Text(
                    'Poison',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
                  ),
                ),
                duration: Duration(seconds: 2),
                decoration: BoxDecoration(
                    color: isSelected ? Colors.grey[350] : _color,
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              AnimatedContainer(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 20.0),
                  child: Text(
                    'Blood',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
                  ),
                ),
                duration: Duration(seconds: 2),
                decoration: BoxDecoration(
                    color: isSelected ? Colors.grey[350] : _color,
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              AnimatedContainer(
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Text(
                    'Brain \n Stroke',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
                  ),
                ),
                duration: Duration(seconds: 2),
                decoration: BoxDecoration(
                    color: isSelected ? Colors.grey[350] : _color,
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              AnimatedContainer(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 20.0),
                  child: Text(
                    'Pregnancy',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 12.0),
                  ),
                ),
                duration: Duration(seconds: 2),
                decoration: BoxDecoration(
                    color: isSelected ? Colors.grey[350] : _color,
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              AnimatedContainer(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 20.0),
                  child: Text(
                    'Medicines',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 13.0),
                  ),
                ),
                duration: Duration(seconds: 2),
                decoration: BoxDecoration(
                    color: isSelected ? Colors.grey[350] : _color,
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              AnimatedContainer(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 20.0),
                  child: Text(
                    'Accident',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
                  ),
                ),
                duration: Duration(seconds: 2),
                decoration: BoxDecoration(
                    color: isSelected ? Colors.grey[350] : _color,
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              AnimatedContainer(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 20.0),
                  child: Text(
                    'Covid-19',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
                  ),
                ),
                duration: Duration(seconds: 2),
                decoration: BoxDecoration(
                    color: isSelected ? Colors.grey[350] : _color,
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ],
          ),
        ),
        getSeparateDivider(),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        Center(
          child: Text(
            "Nearest Best Hospital",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontSize: 22.0),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        Container(
            height: screenHeight * 0.14,
            child:
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 14.0, right: 14.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Hospital 1',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '10km',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 14.0, right: 14.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Hospital 2',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '15km',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 14.0, right: 14.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Hospital 3',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '17.8km',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 14.0, right: 14.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Hospital 4',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '19km',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 14.0, right: 14.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Hospital 5',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '20km',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 14.0, right: 14.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Hospital 6',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '23km',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 14.0, right: 14.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Hospital 7',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '26km',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 14.0, right: 14.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Hospital 8',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '30km',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
            ])),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        getSeparateDivider(),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        Center(
          child: Text(
            "Nearest Best Doctor",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontSize: 22.0),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        Container(
            height: screenHeight * 0.14,
            child:
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 14.0, right: 14.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Sk Kar',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Gynaecologist',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 14.0, right: 14.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Shyam DK',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Neurologist',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 14.0, right: 14.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Divya Sen',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Psychlogist',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 14.0, right: 14.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Hospital 4',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '19km',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 14.0, right: 14.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Hospital 5',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '20km',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 14.0, right: 14.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Hospital 6',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '23km',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 14.0, right: 14.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Hospital 7',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '26km',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 14.0, right: 14.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Hospital 8',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '30km',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
            ])),
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
    canvas.drawLine(Offset(-180.0, 0.0), Offset(180.0, 0.0), _paint);
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
