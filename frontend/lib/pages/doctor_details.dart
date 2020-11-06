import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class DoctorDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double device_height=MediaQuery.of(context).size.height;
    double device_width=MediaQuery.of(context).size.width;
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
            child: Container(
              width: device_width/2,
              height: device_height/4,
              child: SvgPicture.asset('assets/images/doc.svg',),
            ),
          ),
          Container(
            color:Color(0xFFFFE6E6),
            height: device_height/1.78,
          )
        ],
      ),
    );
  }
}