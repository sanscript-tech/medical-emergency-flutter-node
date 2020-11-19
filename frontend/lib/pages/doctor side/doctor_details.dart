import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:medicare/pages/doctor side/drawer.dart';
import 'package:medicare/pages/doctor%20side/doctor_indi.dart';

class DoctorDetails extends StatefulWidget {
  @override
  _DoctorDetailsState createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: getDrawer(context),
      appBar: AppBar(
        backgroundColor: Color(0xFFE37C54),
        title: Text('Doctor\'s List'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _section(deviceWidth),
            _dropdown(deviceWidth),
            _doctor(deviceWidth),
            _doctor(deviceWidth),
            _doctor(deviceWidth),
            Row(
              children: [
                _addButton(),
                _approveDoctors(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _dropdown(deviceWidth) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: DropdownButton<String>(
        hint: Text('Department'),
        items: <String>['General', 'Gyno', 'ENT', 'Heart Specialists']
            .map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text(value),
          );
        }).toList(),
        onChanged: (_) {},
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

  Widget _addButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: SizedBox(
        child: RaisedButton(
            onPressed: () {},
            color: Colors.greenAccent[200],
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.add,
                ),
                Text(
                  "Add Doctors",
                  style: TextStyle(
                      fontFamily: "Roboto", fontWeight: FontWeight.w600),
                ),
              ],
            )),
      ),
    );
  }

  Widget _approveDoctors() {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: SizedBox(
        child: RaisedButton(
            onPressed: () {},
            color: Colors.cyan[200],
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.local_hospital,
                ),
                Text(
                  "Approve Doctors",
                  style: TextStyle(
                      fontFamily: "Roboto", fontWeight: FontWeight.w600),
                ),
              ],
            )),
      ),
    );
  }

//Doctor card
  Widget _doctor(double width) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 25.0,
        top: 20.0,
        bottom: 10.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DoctorIndi()),
          );
        },
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
                SizedBox(height: 15.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
