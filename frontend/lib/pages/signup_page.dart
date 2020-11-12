import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:medicare/pages/dashboard_page.dart';
import 'package:medicare/pages/reset_password.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    Widget _entryField(String title, {bool isPassword = false}) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  fillColor: Colors.cyan.shade100,
                  filled: true,
                  hintText: title),
            )
          ],
        ),
      );
    }

    Widget _backButton() {
      return InkWell(
        onTap: () => Navigator.pop(
          context,
          MaterialPageRoute(builder: (context) => Dashboard()),
        ),
        child: Container(
            padding: EdgeInsets.only(left: 0, top: 5, bottom: 10),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      );
    }

    Widget _loginButton() {
      return SizedBox(
        width: 150.0,
        child: RaisedButton(
            onPressed: () => print("Login Button pressed"),
            color: Colors.cyan.shade200,
            elevation: 10.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Text(
              "LOGIN",
              style:
                  TextStyle(fontFamily: "Roboto", fontWeight: FontWeight.bold),
            )),
      );
    }

    Widget _avatar() {
      return CircleAvatar(
        backgroundColor: Colors.redAccent,
        backgroundImage: AssetImage('assets/images/doctor.png'),
        radius: 80.0,
      );
    }

    Widget _googleSignInButton() {
      return SizedBox(
        width: deviceWidth / 1.5,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.black)),
          color: Color(0xFFFFE6E6),
          onPressed: () => print("Google Sign In"),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/google.png',
                  height: 30.0,
                  width: 30.0,
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Sign In with Google",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    fontFamily: 'Roboto',
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget _emailPasswordWidget() {
      return Column(
        children: <Widget>[
          _entryField("Email id"),
          _entryField("Password", isPassword: true),
        ],
      );
    }

    return Scaffold(
      body: Container(
        height: deviceHeight,
        child: Stack(children: [
          Positioned(
            top: deviceHeight / 10,
            left: deviceWidth / 15,
            child: Text(
              "Welcome Back...",
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: deviceHeight * .2),
                  _emailPasswordWidget(),
                  SizedBox(height: 20),
                  _loginButton(),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                        text: "Not an user yet?",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                        children: <TextSpan>[
                          TextSpan(
                              text: " Create an account",
                              style: TextStyle(
                                  color: Colors.orange, fontFamily: "Roboto"),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => print("Create an account"))
                        ]),
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(
                        context, ResetPassword.resetPassword),
                    child: RichText(
                        text: TextSpan(
                      text: "Forgot Password",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(height: 20),
                  _avatar(),
                  SizedBox(height: 15),
                  Text(
                    "or",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  _googleSignInButton()
                ],
              ),
            ),
          ),
          Positioned(top: 40, left: 0, child: _backButton()),
        ]),
      ),
    );
  }
}
