import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicare/pages/doctor side/drawer.dart';

class DoctorIndi extends StatefulWidget {
  @override
  _DoctorIndiState createState() => _DoctorIndiState();
}

class _DoctorIndiState extends State<DoctorIndi> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    //double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE37C54),
        title: Text('Doctor'),
        centerTitle: true,
      ),
      drawer: getDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SvgPicture.asset(
                'assets/images/doc.svg',
                height: deviceHeight / 3.5,
              ),
            ),
            Container(
              color: Color(0xFFFFE6E6),
              height: deviceHeight / 1.5,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name: Dr. John Doe",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Email: john.doe@gmail.com",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Phone: 9753568964",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Designation: General Practitioner",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Address: 15 Yemen Road, Yemen",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Education: MBBS",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Department: General",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        _edit(),
                        _delete(),
                      ],
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

  Widget _edit() {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: SizedBox(
        child: RaisedButton(
            onPressed: () {},
            color: Colors.cyan[200],
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.edit,
                ),
                Text(
                  "Edit Details",
                  style: TextStyle(
                      fontFamily: "Roboto", fontWeight: FontWeight.w600),
                ),
              ],
            )),
      ),
    );
  }

  Widget _delete() {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: SizedBox(
        child: RaisedButton(
            onPressed: () {},
            color: Colors.greenAccent[200],
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.delete,
                ),
                Text(
                  "Delete Record",
                  style: TextStyle(
                      fontFamily: "Roboto", fontWeight: FontWeight.w600),
                ),
              ],
            )),
      ),
    );
  }

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
}
