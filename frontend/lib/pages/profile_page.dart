import 'package:flutter/material.dart';
import 'package:frontend/constants/color.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isEditingText = false;
  TextEditingController _nameController;
  String name = "John Doe";

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: name);
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double device_height = MediaQuery.of(context).size.height;
    double device_width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE37C54),
        title: Text(
          "Profile",
          style: TextStyle(
            fontFamily: "Roboto",
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundColor: Colors.red.shade100,
                      child: Icon(
                        Icons.person,
                        color: Colors.orange,
                        size: 60.0,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
