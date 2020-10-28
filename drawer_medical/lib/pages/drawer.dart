import 'package:flutter/material.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  List<String> texts = [
    'Home',
    'Report Emergency',
    'Hospitals',
    'Doctors',
    'Buy Medicines',
    'Report an Issue'
  ];
  List<IconData> icons = [
    Icons.home,
    Icons.report,
    Icons.local_hospital,
    Icons.person,
    Icons.local_pharmacy,
    Icons.feedback
  ];
  List<bool> isHighlighted = [true, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medical-Emergency-Node"),
        backgroundColor: Colors.deepOrange[400],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/icon.png"),
                      backgroundColor: Colors.deepOrange[400],
                      radius: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "John Doe",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "john.doe@gmail.com",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                        Text("9547386145")
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 2, 100),
                      child: Icon(
                        Icons.edit,
                        color: Colors.deepOrange[400],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 3,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: texts.length,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        for (int i = 0; i < isHighlighted.length; i++) {
                          setState(() {
                            if (index == i) {
                              isHighlighted[index] = true;
                            } else {
                              //the condition to change the highlighted item
                              isHighlighted[i] = false;
                            }
                          });
                        }
                      },
                      child: Container(
                        color: isHighlighted[index]
                            ? Colors.deepOrange[400]
                            : Colors.white,
                        child: ListTile(
                          title: Text(
                            texts[index],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          leading: Icon(
                            icons[index],
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(40 / 2)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    blurRadius: 40 / 5,
                    offset: Offset(0, 40 / 5),
                  ),
                ],
              ),
              child: FlatButton(
                shape: StadiumBorder(),
                color: Colors.cyanAccent[200],
                onPressed: () {},
                child: Text(
                  'Logout',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 4,
              height: 1,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(
                "App Settings",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
