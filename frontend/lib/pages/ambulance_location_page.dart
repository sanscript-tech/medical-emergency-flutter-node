import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlng/latlng.dart';
import 'package:medicare/constants/color.dart';

class AmbulanceLocation extends StatefulWidget {
  @override
  _AmbulanceLocationState createState() => _AmbulanceLocationState();
}

class _AmbulanceLocationState extends State<AmbulanceLocation> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE37C54),
        title: Text('Ambulance'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: deviceHeight / 2.5,
              // width: deviceWidth/1.1,
              child: FlutterMap(
                options: MapOptions(
                  minZoom: 17.0,
                ),
                layers: [
                  TileLayerOptions(
                      urlTemplate:
                          "https://api.mapbox.com/styles/v1/manthan109/ckhpxqgex0fmk19kmeiibl0x0/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWFudGhhbjEwOSIsImEiOiJjazRmb2x5b3MwOXMxM2VuNWEyZTE3c2U5In0.6A91FHwZkgP__-vGZuvJOQ",
                      additionalOptions: {
                        'accessToken':
                            'pk.eyJ1IjoibWFudGhhbjEwOSIsImEiOiJjazRmb2x5b3MwOXMxM2VuNWEyZTE3c2U5In0.6A91FHwZkgP__-vGZuvJOQ',
                        'id': 'mapbox.mapbox-streets-v7'
                      })
                ],
              ),
            ),
            Text("30min",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0)),
            SizedBox(
              height: deviceHeight / 8,
            ),
            Text(
              "Central Hospital  D.K Sankar",
              style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(height: deviceHeight / 25),
            Container(
              height: deviceHeight / 6,
              width: deviceWidth / 1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppTheme.aqua),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: deviceWidth / 5,
                    ),
                    RaisedButton(
                      onPressed: () => print("Call Again"),
                      color: Colors.lightGreenAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Call Again",
                        style: TextStyle(
                            fontFamily: "Roboto", fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    RaisedButton(
                      onPressed: () => print("Call Again"),
                      color: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            fontFamily: "Roboto", fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
