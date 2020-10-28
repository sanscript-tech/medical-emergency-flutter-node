import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          padding: const EdgeInsets.only(left: 100.0),
          child: Text('Home'),
        ),
      ),
    );
  }
}
