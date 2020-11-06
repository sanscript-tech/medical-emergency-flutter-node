import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicare/constants/color.dart';

class DoctorDetailsPage extends StatelessWidget {
  Widget essentialInfo(String title, String subTitle) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontFamily: "Roboto", fontSize: 18, color: Colors.black54),
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 18,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double device_height = MediaQuery.of(context).size.height;
    double device_width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE37C54),
        title: Text('Doctor'),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Center(
            child: SvgPicture.asset(
              'assets/images/doc.svg',
              height: device_height / 4.5,
            ),
          ),
          Container(
            color: Color(0xFFFFE6E6),
            height: device_height / 1.85,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: device_width / 1.6, top: 8),
                  child: Text(
                    "Dr. Sharma",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: device_width / 1.6),
                  child: Text(
                    "Child Specialist",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: device_height / 20),
                  child: Row(
                    children: [
                      SizedBox(width: device_width / 10),
                      essentialInfo("Patient", "2.2k"),
                      SizedBox(width: device_width / 10),
                      essentialInfo("Experience", "3 years"),
                      SizedBox(width: device_width / 10),
                      essentialInfo("Ratings", "4.7")
                    ],
                  ),
                ),
                SizedBox(
                  height: device_height / 20,
                ),
                Padding(
                  padding: EdgeInsets.only(right: device_width / 1.3),
                  child: Text(
                    "About",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:15.0),
                  child: Container(
                      width: device_width / 1.1,
                      child: Text(
                        "Donec et efficitur massa, sed pulvinar ex. Maecenas et consectetur sem. ",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 18),
                      )),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                border:
                    Border(right: BorderSide(color: Colors.black, width: 2.0))),
            width: device_width / 2,
            height: device_height / 20,
            child: RaisedButton(
              color: AppTheme.aqua,
              onPressed: () => print("Appointment Booked"),
              child: Text(
                "Book An Appointment",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: device_width / 2,
            height: device_height / 20,
            child: RaisedButton(
              color: AppTheme.aqua,
              onPressed: () => print("Consulted Online"),
              child: Text(
                "Consult Online",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
