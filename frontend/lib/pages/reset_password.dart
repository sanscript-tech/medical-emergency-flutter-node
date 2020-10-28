import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class ResetPassword extends StatefulWidget {
  static final String resetPassword = '/reset';

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formKey = GlobalKey<FormState>();
  String email;
  static bool isVisible=false;
  double visible=isVisible?1.0:0.0;
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: ListView(shrinkWrap: true, children: <Widget>[
              Text(
                'Reset Password',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    fontSize: 30.0,
                    color: Colors.black),
              ),
              SizedBox(
                height: 60.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Email Id',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      fontSize: 20.0,
                      color: Colors.black87),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: TextFormField(
                  enableSuggestions: true,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  keyboardAppearance: Brightness.dark,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Enter your registered Email ID";
                    } else if (!EmailValidator.validate(value)) {
                      return "Enter a Valid Email ID";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.blue[200],
                    filled: true,
                    hintText: "Email",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              Padding(
                padding: EdgeInsets.only(left: 40.0, right: 40.0),
                child: Container(
                    child: new RaisedButton(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Colors.black87),
                  ),
                  splashColor: Colors.purple,
                  elevation: 10.0,
                  highlightElevation: 30.0,
                  child: const Text(
                    'Send Email',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.0,
                    ),
                  ),
                  color: Colors.blue[300],
                  textColor: Colors.white,
                  onPressed: () {
                    if(_formKey.currentState.validate()){
                      setState(() {
                        isVisible=true;
                      });
                    }
                    
                  },
                )),
              ),
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0,right: 30.0),
                child: Opacity(opacity: visible,child:
                Container(
                  decoration:BoxDecoration(
                    color:Colors.orange,
                    borderRadius:BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child:Column(
                    children:<Widget>[
                      Text('Password Reset Link has been',style: TextStyle(
                        fontSize:20.0,
                        color:Colors.white
                      ),),
                      Text('sent to your mail.Kindly Check',style: TextStyle(
                        fontSize:20.0,
                        color:Colors.white
                      ),),
                    ]
                  ),
                )),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
