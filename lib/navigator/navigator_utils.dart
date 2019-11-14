import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_redux/common/config/config.dart';
import 'package:flutter_app_redux/common/utils/common_util.dart';
import 'package:flutter_app_redux/common/utils/log_util.dart';
import 'package:flutter_app_redux/navigator/status_bar_util.dart';
import 'package:flutter_app_redux/page/av_redux_list_page.dart';
import 'package:flutter_app_redux/page/common/debug/debug_page.dart';
import 'package:flutter_app_redux/page/common/debug/net_log_detail_page.dart';
import 'package:flutter_app_redux/page/common/debug/net_log_page.dart';
import 'package:flutter_app_redux/page/common/debug/package_info_page.dart';
import 'package:flutter_app_redux/page/common/debug/print_log_page.dart';
import 'package:flutter_app_redux/page/common/demo/cache_demo.dart';
import 'package:flutter_app_redux/page/common/demo/demo_page.dart';
import 'package:flutter_app_redux/page/common/demo/image_preview_demo.dart';
import 'package:flutter_app_redux/page/common/demo/share_login_pay_demo.dart';
import 'package:flutter_app_redux/page/login_page.dart';
import 'package:flutter_app_redux/page/splash_page.dart';

class NavigatorUtils extends NavigatorObserver {
  static final String sName = "NavigatorUtils";

  /*配置routes*/
  static Map<String, WidgetBuilder> configRoutes = {
    SplashPage.sName: (context) => SplashPage(),
    LoginPage.sName: (context) => LoginPage(),
    AVReduxListPage.sName: (context) => AVReduxListPage(),
    DebugPage.sName: (context) => DebugPage(),
    DemoPage.sName: (context) => DemoPage(),
    NetLogDetailPage.sName: (context) => NetLogDetailPage(),
    NetLogPage.sName: (context) => NetLogPage(),
    PackageInfoPage.sName: (context) => PackageInfoPage(),
    PrintLogPage.sName: (context) => PrintLogPage(),
    CacheDemo.sName: (context) => CacheDemo(),
    ImagePreviewDemo.sName: (context) => ImagePreviewDemo(),
    ShareLoginPayDemo.sName: (context) => ShareLoginPayDemo(),

  };
  static NavigatorUtils navigatorUtils;
  static NavigatorState currentNavigator;
  BuildContext mContext;
  static List<Route> _mRoutes;

  Route get currentRoute => _mRoutes[_mRoutes.length - 1];

  List<Route> get routes => _mRoutes;
  static StreamController _streamController;

  static NavigatorUtils getInstance() {
    if (navigatorUtils == null) {
      navigatorUtils = new NavigatorUtils();
      _streamController = StreamController.broadcast();
    }

    return navigatorUtils;
  }

  StreamController get streamController => _streamController;

  setContext(BuildContext context) {
    mContext = context;
  }

  BuildContext getContext() {
    return mContext;
  }

  // replace 页面
  pushReplacementNamed(BuildContext context, String routeName,
      {WidgetBuilder builder}) {
    if (context != null) mContext = context;
    if (currentNavigator != null) {
      return currentNavigator.pushReplacement(
        RemoveAnimCupertinoPageRoute(
          builder: builder ?? configRoutes[routeName],
          settings: RouteSettings(name: routeName),
        ),
      );
    }
  }

  // push 页面
  pushNamed(BuildContext context, String routeName,
      {WidgetBuilder builder, int animDuration, bool fullscreenDialog = false}) {
    if (context != null) mContext = context;
    if (currentNavigator != null) {
      return currentNavigator.push(
        RemoveAnimCupertinoPageRoute(
          builder: builder ?? configRoutes[routeName],
          settings: RouteSettings(name: routeName),
          animDuration: animDuration,
          fullscreenDialog: fullscreenDialog,
        ),
      );
    }
  }

  // pop 页面
  pop<T extends Object>(BuildContext context, [T result]) {
    if (context != null) mContext = context;
    currentNavigator.pop(result);
  }

  // pop页面 到routeName为止
  popUntil(BuildContext context, String routeName) {
    if (context != null) mContext = context;
    Navigator.popUntil(context, ModalRoute.withName(routeName));
  }

  // push一个页面， 移除该页面下面所有页面
  pushNamedAndRemoveUntil(BuildContext context, String newRouteName) {
    if (context != null) mContext = context;
    if (currentNavigator != null &&
        newRouteName != currentRoute.settings.name) {
      return currentNavigator.pushNamedAndRemoveUntil(
          newRouteName, (Route<dynamic> route) => false);
    }
  }

  @override
  void didPush(Route route, Route previousRoute) {
    // 当调用Navigator.push时回调
    super.didPush(route, previousRoute);
    //可通过route.settings获取路由相关内容
    //route.currentResult获取返回内容
    //....等等
    if (_mRoutes == null) {
      _mRoutes = new List<Route>();
    }
    if (route is CupertinoPageRoute || route is MaterialPageRoute) {
      LogUtil.i(sName, '^^^^routePush');
      LogUtil.i(sName, route.settings.name);
      _mRoutes.add(route);
      routeObserver();
    }
  }

  @override
  void didReplace({Route newRoute, Route oldRoute}) {
    super.didReplace();
    if (newRoute is CupertinoPageRoute || newRoute is MaterialPageRoute) {
      LogUtil.i(sName, '^^^^routeReplace');
      LogUtil.i(sName, newRoute.settings.name);
      _mRoutes.remove(oldRoute);
      _mRoutes.add(newRoute);
      routeObserver();
    }
  }

  @override
  void didPop(Route route, Route previousRoute) {
    super.didPop(route, previousRoute);
    if (route is CupertinoPageRoute || route is MaterialPageRoute) {
      LogUtil.i(sName, '^^^^routePop');
      LogUtil.i(sName, route.settings.name);
      _mRoutes.remove(route);
      routeObserver();
    }
  }

  @override
  void didRemove(Route removedRoute, Route oldRoute) {
    super.didRemove(removedRoute, oldRoute);
    if (removedRoute is CupertinoPageRoute ||
        removedRoute is MaterialPageRoute) {
      LogUtil.i(sName, '^^^^routeRemove');
      LogUtil.i(sName, removedRoute.settings.name);
      _mRoutes.remove(removedRoute);
      routeObserver();
    }
  }

  void routeObserver() {
    LogUtil.i(sName, '&&路由栈&&');
    LogUtil.i(sName, _mRoutes);
    LogUtil.i(sName, '&&当前路由&&');
    LogUtil.i(sName, _mRoutes[_mRoutes.length - 1]);
    // 当前页面的navigator
    currentNavigator = _mRoutes[_mRoutes.length - 1].navigator;
    StatusBarUtil.setupStatusBar(_mRoutes[_mRoutes.length - 1]);
    _emitListener();
  }

  _emitListener() {
    streamController.sink.add(_mRoutes);
  }

  void checkLoginAddOrJump({String routeName, bool needLogin = true, Function doNextThing, WidgetBuilder builder}) {
    if (needLogin && !CommonUtils.isLogin() && currentRoute.settings.name != LoginPage.sName) {
      NavigatorUtils.getInstance().pushNamed(null, LoginPage.sName, fullscreenDialog: true);
      return;
    }
    if (routeName != null) {
      NavigatorUtils.getInstance().pushNamed(null, routeName, builder: builder);
    }
    doNextThing?.call();
  }
}

class RemoveAnimCupertinoPageRoute extends CupertinoPageRoute {
  int animDuration;

  RemoveAnimCupertinoPageRoute({
    WidgetBuilder builder,
    String title,
    RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    this.animDuration,
  })  : assert(builder != null),
        assert(maintainState != null),
        assert(fullscreenDialog != null),
        assert(opaque),
        super(
            builder: builder,
            title: title,
            settings: settings,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog);

  @override
  Duration get transitionDuration =>
      Duration(milliseconds: animDuration ?? Config.JUMP_PAGE_DELAY);
}
