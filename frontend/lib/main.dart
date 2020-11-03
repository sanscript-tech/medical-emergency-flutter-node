import 'package:flutter/material.dart';
import 'package:medicare/bottom_nav.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BottomNav(),
      debugShowCheckedModeBanner: false,
      //initialRoute: Dashboard.dashboardId,
      routes: routes,
    );
  }
}
