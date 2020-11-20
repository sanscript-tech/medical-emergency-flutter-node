import 'package:flutter/material.dart';
import '../../drawer.dart';

class PatientQueue extends StatefulWidget {
  @override
  _PatientQueueState createState() => _PatientQueueState();
}

class _PatientQueueState extends State<PatientQueue> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: getDrawer(context),
      appBar: AppBar(
        backgroundColor: Color(0xFFE37C54),
        title: Text('Patient Queue'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _section(deviceWidth),
            _dropdown(deviceWidth),
            _patient(deviceWidth),
            _patient(deviceWidth),
            _patient(deviceWidth),
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

  //Patient card
  Widget _patient(double width) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 25.0,
        top: 20.0,
        bottom: 10.0,
      ),
      child: InkWell(
        onTap: () {},
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
                      ),
                      child: Icon(
                        Icons.person,
                        size: 50,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Patient ID: 110025679",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "John Doe",
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
                            Text(
                              "Status: Visiting Doctor",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 18.0,
                                fontStyle: FontStyle.italic,
                                color: Colors.grey.shade800,
                              ),
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
