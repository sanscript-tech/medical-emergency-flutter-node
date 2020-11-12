import 'package:flutter/material.dart';
import 'package:medicare/pages/login_page.dart';

class Dashboard extends StatelessWidget {
  static final String dashboardId = '/dashboard';

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    Widget _createAccountButton() {
      return SizedBox(
        width: 250.0,
        child: RaisedButton(
            onPressed: () => print("Login Button pressed"),
            color: Colors.cyan.shade200,
            elevation: 10.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                bottom: 10.0,
              ),
              child: Text(
                "CREATE AN ACCOUNT",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            )),
      );
    }

    Widget _signInButton() {
      return SizedBox(
        width: 250.0,
        child: RaisedButton(
            onPressed: () =>
                Navigator.pushNamed(context, LoginPage.loginPageId),
            color: Colors.cyan.shade200,
            elevation: 10.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                bottom: 10.0,
              ),
              child: Text(
                "ALREADY AN USER? SIGN IN",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            )),
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

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFFFFE6E6),
        child: Stack(
          children: [
            Image.asset('assets/images/logo.png'),
            Center(
              child: Text(
                "Welcome to HelloDoc",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: deviceHeight * .4),
                        Container(
                          width: deviceWidth / 1.3,
                          child: Text(
                            "Your one stop solution to all your emergency needs",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        _createAccountButton(),
                        SizedBox(height: 20),
                        _signInButton(),
                        SizedBox(height: 10),
                        Text(
                          "or",
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        _googleSignInButton()
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
