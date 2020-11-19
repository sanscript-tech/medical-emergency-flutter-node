import 'package:flutter/material.dart';
import 'package:medicare/pages/login_page.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'package:carousel_indicator/carousel_indicator.dart';

class Carousel extends StatefulWidget {
  final String title;
  Carousel({this.title});
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int pageIndex = 0;
  int pages = 4;

  Widget _skipButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Container(
        alignment: Alignment.centerRight,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: Text(
            'Skip',
            style: TextStyle(
              color: Color(0xFFE37C54),
              fontSize: 20.0,
              fontFamily: 'Roboto',
            ),
          ),
        ),
      ),
    );
  }

  Widget _options(String userType) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0),
      child: RaisedButton(
          onPressed: () {
            if (userType == "I AM A PATIENT") {
              print("You are a patient");
            } else if (userType == "I AM A DOCTOR") {
              print("You are a doctor");
            } else {
              print("Hospital Management");
            }
          },
          color: Colors.cyanAccent[200],
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Text(
            userType,
            style: TextStyle(fontFamily: "Roboto", fontWeight: FontWeight.w600),
          )),
    );
  }

  final List<Widget> images = [
    Container(
      color: Colors.white,
      child: Column(
        children: [
          Image(
            image: AssetImage(
              "assets/images/onboarding4.png",
            ),
            height: 300.0,
            width: 300.0,
          ),
          Text(
            "Your one click emergency friend",
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 25.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Image(
            image: AssetImage(
              "assets/images/onboarding3.png",
            ),
            height: 300.0,
            width: 300.0,
          ),
          Text(
            "Find best doctors around you",
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 25.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Image(
            image: AssetImage("assets/images/onboarding2.png"),
            height: 300.0,
            width: 300.0,
          ),
          Text(
            "Looking for reliable hospitals?",
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 25.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Image(
            image: AssetImage("assets/images/onboarding1.png"),
            height: 300.0,
            width: 300.0,
          ),
          Text(
            "All your medicines at one place",
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 25.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  ];

  final IndexController controller = IndexController();
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _skipButton(),
            Container(
              height: deviceHeight / 2.4,
              width: double.infinity,
              child: PageView(
                children: images,
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: CarouselIndicator(
                count: images.length,
                index: pageIndex,
                color: Color(0xFFE37C54),
                activeColor: Color(0xFFFFE6E6),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              color: Color(0xFFFFE6E6),
              height: deviceHeight / 2.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _options("I AM A PATIENT"),
                  _options("I AM A DOCTOR"),
                  _options("I AM A HOSPITAL"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
