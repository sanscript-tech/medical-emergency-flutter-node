import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shop",
          style: TextStyle(fontFamily: "Roboto", color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFE37C54),
      ),
      drawer: Drawer(),
    );
  }
}