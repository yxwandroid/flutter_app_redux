import 'package:flutter/material.dart';
import 'package:flutter_app_redux/navigator/navigator_utils.dart';
import 'package:flutter_app_redux/page/common/demo/image_preview_demo.dart';
import 'package:flutter_app_redux/page/common/demo/share_login_pay_demo.dart';
import 'package:flutter_app_redux/widget/sm_titlebar_widget.dart';

import 'cache_demo.dart';

class DemoPage extends StatefulWidget {
  static final String sName = "demo";

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SMTitleBarWidget(
        title: 'Demo',
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('图片预览'),
            onTap: () {
              NavigatorUtils.getInstance().pushNamed(context, ImagePreviewDemo.sName);
            },
          ),
          ListTile(
            title: Text('CacheManager'),
            onTap: () {
              NavigatorUtils.getInstance().pushNamed(context, CacheDemo.sName);
            },
          ),
          ListTile(
            title: Text('Share/Login/Pay'),
            onTap: () {
              NavigatorUtils.getInstance().pushNamed(context, ShareLoginPayDemo.sName);
            },
          ),
        ],
      ),
    );
  }
}
