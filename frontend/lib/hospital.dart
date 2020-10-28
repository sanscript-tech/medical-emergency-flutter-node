import 'package:flutter/material.dart';

class Hospital extends StatefulWidget {
  @override
  _HospitalState createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  @override
  Widget build(BuildContext context) {
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
          child: Text('Hospital'),
        ),
      ),
    );
  }
}
