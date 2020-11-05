import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Doctor extends StatefulWidget {
  @override
  _DoctorState createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange,
        leading: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Icon(Icons.menu),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 90.0),
          child: Text('Doctor'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _section(deviceWidth),
            _doctor(deviceWidth),
            _doctor(deviceWidth),
            _doctor(deviceWidth),
          ],
        ),
      ),
    );
  }

  Widget _section(double deviceWidth) {
    return Container(
      width: deviceWidth,
      margin: const EdgeInsets.only(bottom: 3.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0),
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          height: 50.0,
          child: _searchBar(),
        ),
      ),
    );
  }

//Search Bar
  Widget _searchBar() {
    return TextField(
      decoration: new InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(end: 12.0),
            child: Icon(Icons.search),
          ),
          border: new OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          fillColor: Colors.cyan.shade100,
          filled: true,
          hintText: "Search by Name or Field.."),
    );
  }

//Doctor card
  Widget _doctor(double width) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.shade200,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 7.0),
              blurRadius: 5.0,
            ),
          ],
        ),
        width: width,
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: Image.asset(
                      'assets/images/doctor.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Dr. Sharma",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: <Widget>[
                          AutoSizeText(
                            'Child Specialists',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 18,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Credits:",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 18.0,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey.shade800,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber[800],
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber[800],
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber[800],
                          ),
                          Icon(
                            Icons.star_border,
                          ),
                          Icon(
                            Icons.star_border,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _appointment(),
                  SizedBox(
                    width: 7.0,
                  ),
                  _consult(),
                ],
              ),
              SizedBox(height: 15.0),
            ],
          ),
        ),
      ),
    );
  }

//book an appointment button
  Widget _appointment() {
    return SizedBox(
      child: RaisedButton(
          onPressed: () {},
          color: Colors.greenAccent[200],
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Text(
            "Book an Appointment",
            style: TextStyle(fontFamily: "Roboto", fontWeight: FontWeight.w600),
          )),
    );
  }

//Consult online button
  Widget _consult() {
    return SizedBox(
      width: 150.0,
      child: RaisedButton(
          onPressed: () {},
          color: Colors.cyanAccent[200],
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Text(
            "Consult Online",
            style: TextStyle(fontFamily: "Roboto", fontWeight: FontWeight.w600),
          )),
    );
  }
}
