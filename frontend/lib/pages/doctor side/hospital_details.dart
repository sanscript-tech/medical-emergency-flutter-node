import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HospitalDetailsDoctor extends StatefulWidget {
  @override
  _HospitalDetailsDoctorState createState() => _HospitalDetailsDoctorState();
}

class _HospitalDetailsDoctorState extends State<HospitalDetailsDoctor> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE37C54),
        title: Text('Hospital Details'),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/images/hospital.svg',
                height: deviceHeight / 5,
              ),
              Text("Location Map:"),
              Container(
                height: deviceHeight / 5,
                width: deviceWidth / 1.1,
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
            ],
          ),
        ),
      ),
    );
  }
}
