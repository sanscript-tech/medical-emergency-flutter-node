import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HospitalDetails extends StatefulWidget {
  @override
  _HospitalDetailsState createState() => _HospitalDetailsState();
}

class _HospitalDetailsState extends State<HospitalDetails> {
  final String assetName = 'assets/images/hospital.svg';

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
          leading: Icon(Icons.view_headline),
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: Text(
            'Hospital',
            style: TextStyle(fontFamily: 'Roboto', color: Colors.white),
          )),
      body: ListView(children: <Widget>[
        Container(
          child: SvgPicture.asset(
            assetName,
            semanticsLabel: 'Hospital',
            height: deviceHeight * 0.36,
            width: deviceWidth,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 10.0),
          child: Text(
            'General Hospital',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                fontSize: deviceHeight * 0.03),
          ),
        ),
        Row(children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: <Widget>[
                Text(
                  'Available Beds',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: 'MyFlutterApp',
                      fontSize: deviceHeight * 0.02),
                ),
                Text(
                  '700',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: 'MyFlutterApp',
                      fontSize: deviceHeight * 0.02),
                ),
              ]),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: <Widget>[
                Text(
                  'Doctors',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: 'MyFlutterApp',
                      fontSize: deviceHeight * 0.02),
                ),
                Text(
                  '120',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: 'MyFlutterApp',
                      fontSize: deviceHeight * 0.02),
                ),
              ]),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: <Widget>[
                Text(
                  'Ratings',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: 'MyFlutterApp',
                      fontSize: deviceHeight * 0.02),
                ),
                Text(
                  '4.5',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: 'MyFlutterApp',
                      fontSize: deviceHeight * 0.02),
                ),
              ]),
            ),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'About',
            style: TextStyle(
                fontWeight: FontWeight.normal, fontSize: deviceHeight * 0.03),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            'Lorem asfafadf asdfsdafsadfdesf wefwegfasfasfdsghbsdjkfbasjfbadshbfdh dsjfbfashdfhasdfhjasvfhadbsfjvsdhf',
            style: TextStyle(
                fontFamily: 'MyFlutterApp',
                fontWeight: FontWeight.w200,
                fontSize: deviceHeight * 0.025),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Departments',
            style: TextStyle(
                fontWeight: FontWeight.normal, fontSize: deviceHeight * 0.03),
          ),
        ),
        Row(children: <Widget>[
          MaterialButton(
            color: Colors.blue[200],
            minWidth: deviceWidth * 0.5,
            child: Text('Book An Appointment',
                style: TextStyle(color: Colors.black)),
            onPressed: () {},
          ),
          MaterialButton(
            color: Colors.blue[200],
            minWidth: deviceWidth * 0.5,
            child:
                Text('Call Ambulance', style: TextStyle(color: Colors.black)),
            onPressed: () {},
          ),
        ])
      ]),
    );
  }
}
