import 'package:flutter/material.dart';
import 'package:medicare/icons/icons.dart';
class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title:Text('My App')
      ),
      drawer:  Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
            child: Row(children: <Widget>[
          Icon(Icons.person),
          Container(
            child: Column(children: <Widget>[
              Text('John Doe'),
              Text('john.doe@gmail.com'),
              Text('9747386145'),
            ]),
          ),
        ])),
        ListTile(
          leading: Icon(
            MyFlutterApp.home,
          ),
          title: Text('Home'),
        ),
        ListTile(
          leading: Icon(Icons.alarm_off),
          title: Text('Report Emergency'),
        ),
        ListTile(
          leading: Icon(MyFlutterApp.hospital),
          title: Text('Hospitals'),
        ),
        ListTile(
          leading: Icon(MyFlutterApp.doctor),
          title: Text('Doctors'),
        ),
        ListTile(
          leading: Icon(MyFlutterApp.medicine),
          title: Text('Buy Medicines'),
        ),
        ListTile(
          leading: Icon(Icons.report_problem),
          title: Text('Report an Issue'),
        ),
        RaisedButton(

          onPressed: () {},
        child:Text('Logout'),),

      ])),
      
    );
  }
}