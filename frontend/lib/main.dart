import 'package:flutter/material.dart';
import 'package:medicare/pages/dashboard_page.dart';
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
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
      //initialRoute: Dashboard.dashboardId,
      routes: routes,
    );
  }
}
