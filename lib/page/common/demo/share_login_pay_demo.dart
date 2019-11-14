import 'package:flutter/material.dart';
import 'package:flutter_app_redux/widget/sm_titlebar_widget.dart';

//import 'package:fluwx/fluwx.dart' as fluwx;
//import 'package:tobias/tobias.dart' as tobias;

class ShareLoginPayDemo extends StatefulWidget {
  static final String sName = "share_login_pay_demo";

  @override
  _ShareLoginPayDemoState createState() => _ShareLoginPayDemoState();
}

class _ShareLoginPayDemoState extends State<ShareLoginPayDemo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SMTitleBarWidget(
        title: 'share&login&pay Demo',
      ),
      body: ListView(
        children: <Widget>[],
      ),
    );
  }
}
