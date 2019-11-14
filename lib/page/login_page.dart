import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  static final String sName  =  "LoginPage";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(child:
      Text("登录 "),);
  }
}
