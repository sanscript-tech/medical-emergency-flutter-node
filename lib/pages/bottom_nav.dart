import 'package:flutter/material.dart';
import 'package:medicare/icons/icons.dart';
import 'home.dart';
import 'hospital_search.dart';
import 'doctor_search.dart';
import 'medicine_search.dart';

//this page contains a common bottom navigation bar for all the pages.
class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  //setting the current index at 0
  int _currentIndex = 0;
  //the order of these widgets should be kept same as the bottom navigation bar
  final List<Widget> _tabs = [Home(), Hospital(), Doctor(), Shop()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.orange,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Icon(
                MyFlutterApp.home,
                color: Colors.orange.shade50,
                size: 30.0,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                'Home',
                style: TextStyle(
                  color: Colors.orange.shade50,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Icon(
                MyFlutterApp.hospital,
                color: Colors.orange.shade50,
                size: 30.0,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                "Hospital",
                style: TextStyle(
                  color: Colors.orange.shade50,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Icon(
                MyFlutterApp.doctor,
                color: Colors.orange.shade50,
                size: 30.0,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                "Doctor",
                style: TextStyle(
                  color: Colors.orange.shade50,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Icon(
                MyFlutterApp.medicine,
                color: Colors.orange.shade50,
                size: 30.0,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                "Shop",
                style: TextStyle(
                  color: Colors.orange.shade50,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
