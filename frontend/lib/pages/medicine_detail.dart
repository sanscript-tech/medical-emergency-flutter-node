import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicare/constants/color.dart';

class Shop extends StatelessWidget {
  Widget essentialInfo(String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontFamily: "Roboto", color: Colors.black45, fontSize: 18.0),
        ),
        SizedBox(height: 5),
        Text(
          subtitle,
          style: TextStyle(fontFamily: "Roboto", fontSize: 16.0),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shop",
          style: TextStyle(fontFamily: "Roboto", color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFE37C54),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: deviceHeight / 20, left: deviceWidth / 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/images/med.svg',
                      width: 75,
                      height: 75,
                    ),
                    SizedBox(width: deviceWidth / 10),
                    Column(
                      children: [
                        Text(
                          "Paracetamol",
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Cold and Fever",
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 17,
                              color: Colors.black45),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: deviceHeight / 25),
                child: Container(
                  color: Color(0xFFFFE6E6),
                  width: double.infinity,
                  height: deviceHeight / 1.58,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: deviceHeight / 25,
                      left: deviceWidth / 15,
                      right: 20.0,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            essentialInfo("Mfg. Date", "10-09-2018"),
                            SizedBox(width: deviceWidth / 10),
                            essentialInfo("Exp. Date", "20-10-2021"),
                            SizedBox(width: deviceWidth / 10),
                            essentialInfo("Cost", "Rs. 150"),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: deviceHeight / 25, right: deviceWidth / 4.4),
                          child: Text(
                            "Description and Specifications",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 20.0,
                                color: Colors.black45),
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: deviceWidth / 1.1,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit." +
                                " Sed hendrerit elementum eros. Duis euismod purus malesuada enim fermentum posuere." +
                                " Nunc at tortor at arcu rhoncus hendrerit quis eget lacus. Duis mattis vehicula varius." +
                                " Cras euismod est at leo placerat tempor quis ac justo. ",
                            style:
                                TextStyle(fontFamily: "Roboto", fontSize: 20.0),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(),
      bottomNavigationBar: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                border:
                    Border(right: BorderSide(color: Colors.black, width: 2.0))),
            width: deviceWidth / 2,
            height: deviceHeight / 20,
            child: RaisedButton(
              color: AppTheme.aqua,
              onPressed: () => print("Added to cart"),
              child: Text(
                "Add to cart",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: deviceWidth / 2,
            height: deviceHeight / 20,
            child: RaisedButton(
              color: AppTheme.aqua,
              onPressed: () => print("Buy Now"),
              child: Text(
                "Buy Now",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
