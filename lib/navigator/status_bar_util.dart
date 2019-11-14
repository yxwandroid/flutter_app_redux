import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

enum StatusColor {
  Light,
  Dark
}

class StatusBarUtil {
  static List<String> lightRouteNameList = [
//    TaskhallPage.sName,
//    SPHomePage.sName,
//    MainPage.sName,
  ];
  static List darkRoutNameList = [
//    SplashPage.sName,
//    LoginPage.sName,
  ];

  static StatusColor currentColor = StatusColor.Light;

  static setupStatusBar(Route currentRoute) {
    if (lightRouteNameList.contains(currentRoute.settings.name)) {
      setLight();
    } else if (darkRoutNameList.contains(currentRoute.settings.name)) {
      setDart();
    }
  }

  static setupMainPage(int index) {
    if (index == 0) {
      setLight();
    } else {
      setDart();
    }
  }

   /// 黑底白字
  static setLight() {
    if (currentColor != StatusColor.Light) {
      FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
      currentColor = StatusColor.Light;
    }
  }

  /// 白底黑字
  static setDart() {
    if (currentColor != StatusColor.Dark) {
      FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
      currentColor = StatusColor.Dark;
    }
  }

}
