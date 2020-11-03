import 'package:flutter/material.dart';
import 'package:medicare/pages/emergency_search.dart';
import 'package:medicare/pages/hospital_details.dart';
import 'pages/dashboard_page.dart';
import 'pages/profile_page.dart';
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
      home: EmergencySearch(),
      debugShowCheckedModeBanner: false,
      //initialRoute: Dashboard.dashboardId,
      routes: routes,
    );
  }
}
