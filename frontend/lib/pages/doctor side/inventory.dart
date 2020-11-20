import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../drawer.dart';

class Inventory extends StatefulWidget {
  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: getDrawer(context),
      appBar: AppBar(
        backgroundColor: Color(0xFFE37C54),
        title: Text('Inventory'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _section(deviceWidth),
            _dropdown(deviceWidth),
            _medicine(deviceWidth),
            _medicine(deviceWidth),
            _medicine(deviceWidth),
            _medicine(deviceWidth),
            _medicine(deviceWidth),
            _medicine(deviceWidth),
            _medicine(deviceWidth),
          ],
        ),
      ),
    );
  }

  Widget _dropdown(deviceWidth) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: DropdownButton<String>(
        hint: Text('Select Type'),
        items: <String>[
          'Fever and Cold',
          'Pain Killers',
          'Gel',
        ].map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text(value),
          );
        }).toList(),
        onChanged: (_) {},
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
  Widget _medicine(double width) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 25.0,
        top: 20.0,
        bottom: 10.0,
      ),
      child: InkWell(
        onTap: () {},
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                      ),
                      child: SvgPicture.asset('assets/images/med.svg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Paracetemol",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        AutoSizeText(
                          'Fever and Cold',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 18,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        AutoSizeText(
                          'Quantity: 105',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 18,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
