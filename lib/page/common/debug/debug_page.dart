import 'package:flutter/material.dart';
import 'package:flutter_app_redux/navigator/navigator_utils.dart';
import 'package:flutter_app_redux/page/common/debug/net_log_page.dart';
import 'package:flutter_app_redux/page/common/debug/package_info_page.dart';
import 'package:flutter_app_redux/page/common/debug/print_log_page.dart';
import 'package:flutter_app_redux/page/common/demo/demo_page.dart';
import 'package:flutter_app_redux/widget/sm_titlebar_widget.dart';



class DebugPage extends StatefulWidget {
  static final String sName = "debug";

  @override
  _DebugPageState createState() => _DebugPageState();
}

class _DebugPageState extends State<DebugPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SMTitleBarWidget(
        title: 'Debug',
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('请求日志'),
            onTap: () {
              NavigatorUtils.getInstance()
                  .pushNamed(context, NetLogPage.sName);
            },
          ),
          ListTile(
            title: Text('打印日志'),
            onTap: () {
              NavigatorUtils.getInstance()
                  .pushNamed(context, PrintLogPage.sName);
            },
          ),
          ListTile(
            title: Text('应用信息'),
            onTap: () {
              NavigatorUtils.getInstance()
                  .pushNamed(context, PackageInfoPage.sName);
            },
          ),
          ListTile(
            title: Text('Demo'),
            onTap: () {
              NavigatorUtils.getInstance()
                  .pushNamed(context, DemoPage.sName);
            },
          ),
        ],
      ),
    );
  }
}
