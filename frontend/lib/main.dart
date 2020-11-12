import 'package:flutter/material.dart';
import 'package:medicare/pages/bottom_nav.dart';
import 'package:medicare/pages/dashboard_page.dart';
import 'package:medicare/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: BottomNav(),
    );
  }
}
