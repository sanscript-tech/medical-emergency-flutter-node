import 'package:flutter/material.dart';
import '../drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getDrawer(context),
      appBar: AppBar(
        backgroundColor: Color(0xFFE37C54),
        title: Text("Home"),
        centerTitle: true,
      ),
    );
  }
}
