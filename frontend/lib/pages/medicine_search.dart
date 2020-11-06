import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShopSearch extends StatefulWidget {
  @override
  _ShopSearchState createState() => _ShopSearchState();
}

class _ShopSearchState extends State<ShopSearch> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFE37C54),
        leading: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Icon(Icons.menu),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 70.0),
          child: Text('Shop Medicines'),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                _section(deviceWidth),
                Padding(
                  padding: EdgeInsets.only(
                    right: deviceWidth / 2,
                    top: 15.0,
                  ),
                  child: Text(
                    "Recent Purchases",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 15.0,
                    right: 20.0,
                  ),
                  child: recentPurchases(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: deviceWidth / 3,
                    top: 15.0,
                  ),
                  child: Text(
                    "Running out of Medicines?",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: <Widget>[
                      _medicines(deviceWidth),
                      _medicines(deviceWidth),
                      _medicines(deviceWidth),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _section(double deviceWidth) {
    return Container(
      width: deviceWidth,
      margin: const EdgeInsets.only(bottom: 3.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0),
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          height: 50.0,
          child: _searchBar(),
        ),
      ),
    );
  }

//Search Bar
  Widget _searchBar() {
    return TextField(
      decoration: new InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(end: 12.0),
            child: Icon(Icons.search),
          ),
          border: new OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          fillColor: Colors.cyan.shade100,
          filled: true,
          hintText: "Search by Name or Field.."),
    );
  }

//Medicine card
  Widget _medicines(double width) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 25.0,
        top: 10.0,
        bottom: 20.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.shade200,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 7.0),
              blurRadius: 5.0,
            ),
          ],
        ),
        width: width,
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: SvgPicture.asset('assets/images/med.svg'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Paracetemol Tablets",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: <Widget>[
                          AutoSizeText(
                            'Fever and Cold',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 18,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Rs. 150",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 18.0,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _addtocart(),
                  _buynow(),
                ],
              ),
              SizedBox(height: 15.0),
            ],
          ),
        ),
      ),
    );
  }

//book an appointment button
  Widget _addtocart() {
    return SizedBox(
      child: RaisedButton(
          onPressed: () {},
          color: Colors.greenAccent[200],
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Text(
            "Add to Cart",
            style: TextStyle(fontFamily: "Roboto", fontWeight: FontWeight.w600),
          )),
    );
  }

//Consult online button
  Widget _buynow() {
    return SizedBox(
      child: RaisedButton(
          onPressed: () {},
          color: Colors.cyanAccent[200],
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Text(
            "Buy Now",
            style: TextStyle(fontFamily: "Roboto", fontWeight: FontWeight.w600),
          )),
    );
  }

  Widget recentPurchases() {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (BuildContext context, int i) => Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 6.0,
            color: Colors.grey.shade200,
            child: Container(
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/images/med.svg'),
                  Text(
                    "Name",
                    style: TextStyle(
                        fontFamily: "Roboto", fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
