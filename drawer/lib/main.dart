import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medical-Emergency-Node"),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              color: Colors.blue[200],
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/download.jpg"),
                  backgroundColor: Colors.blue,
                  radius: 50,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                "Your Account",
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                "Medical Emergency",
                style: TextStyle(fontSize: 15),
              ),
              leading: Icon(Icons.local_hospital),
            ),
            ListTile(
              title: Text(
                "Feedback",
                style: TextStyle(fontSize: 15),
              ),
              leading: Icon(Icons.feedback),
            ),
            ListTile(
              title: Text(
                "Medical Facilities",
                style: TextStyle(fontSize: 15),
              ),
              leading: Icon(Icons.local_pharmacy),
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text(
                "About Us",
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
