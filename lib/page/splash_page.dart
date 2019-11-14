import 'package:flutter/material.dart';
import 'package:flutter_app_redux/common/config/config.dart';
import 'package:flutter_app_redux/common/redux/main_state.dart';
import 'package:flutter_app_redux/common/utils/common_util.dart';
import 'package:flutter_app_redux/common/utils/log_util.dart';
import 'package:flutter_app_redux/common/utils/screen_util.dart';
import 'package:flutter_app_redux/navigator/navigator_utils.dart';
import 'package:flutter_app_redux/widget/drag_debug_widget.dart';
import 'package:flutter_redux/flutter_redux.dart';

class SplashPage extends StatefulWidget {
  static final String sName = "/";

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


  @override
  void initState() {
    super.initState();
    if (Config.DEBUG_ENTER) {
      Future.delayed(Duration(milliseconds: Config.JUMP_PAGE_DELAY), () {
        _showDebugEnter();
      });
    }

  }


  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    LogUtil.i(SplashPage.sName,"------didChangeDependencies");
    // 初始化store
    CommonUtils.setStore(StoreProvider.of<MainState>(context));
    NavigatorUtils.getInstance().setContext(context);
    // 初始化屏幕信息
    ScreenUtil.getInstance().init(context);
  }


  _showDebugEnter() {
    OverlayEntry overlayEntry;
    overlayEntry = new OverlayEntry(builder: (context) {
      return DragDebugWidget(overlayEntry: overlayEntry);
    });
    Overlay.of(context).insert(overlayEntry);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("引导界面"),),
      body: Container(
        child: Text("wilson"),
      ),
    );
  }
}
