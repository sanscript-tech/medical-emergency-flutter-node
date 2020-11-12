import 'package:flutter/material.dart';
import 'package:medicare/drawer.dart';

class Hospital extends StatefulWidget {
  @override
  _HospitalState createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getDrawer(context),
      appBar: AppBar(
        backgroundColor: Color(0xFFE37C54),
        title: Text('Hospital'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(),
    );
  }
}
