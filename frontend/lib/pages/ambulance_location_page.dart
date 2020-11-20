import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlng/latlng.dart';

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
      body: Column(
        children: [
          Container(
            height: deviceHeight / 2,
            width: deviceWidth / 1.5,
            child: FlutterMap(
              options: MapOptions(
                minZoom: 17.0,
              ),
              layers: [
                TileLayerOptions(
                    urlTemplate:
                        "https://api.mapbox.com/styles/v1/manthan109/ckhpsda8b0d1e1amvy2790rm8/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWFudGhhbjEwOSIsImEiOiJjazRmb2x5b3MwOXMxM2VuNWEyZTE3c2U5In0.6A91FHwZkgP__-vGZuvJOQ",
                    additionalOptions: {
                      'accessToken':
                          'pk.eyJ1IjoibWFudGhhbjEwOSIsImEiOiJjazRmb2x5b3MwOXMxM2VuNWEyZTE3c2U5In0.6A91FHwZkgP__-vGZuvJOQ',
                      'id': 'mapbox.mapbox-streets-v7'
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
