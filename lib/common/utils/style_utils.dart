import 'package:flutter/material.dart';
import 'package:flutter_app_redux/widget/sm_textstyle.dart';

class SMColors {
  static const Color grayLineColor = Color(0xffeeeeee);

  /// 半透明蒙层
  static const Color opacity30Cover = Color(0x33000000);

  static const Color opacity60Cover = Color(0x96000000);

  static const Color opacity75Cover = Color(0xcc000000);
  static const Color opacity50Cover = Color(0x7f000000);

  static const Color opacity30CoverWhite = Color(0x33ffffff);

  static const Color opacity30CoverRed = Color(0x33fd5439);

  static const Color opacity60CoverWhite = Color(0x96ffffff);

  static const Color opacity75CoverWhite = Color(0xccffffff);

  static const Color transparent = Color(0x00000000);

  /// 消息提示点颜色
  static const Color msgTipColor = Color(0xFFFE373C);
  static const Color msgTipColor05 = Color(0x88FE373C);

  static const Color toastRed = Color(0xEEFF223A);
  static const Color toastGreen = Color(0xEE1BBE4C);

  ///主页tab下划线颜色
  static const Color tabLineColor = Color(0x44FE373C);

  /// 字体颜色
  static const Color textColor111111 = Color(0xff111111);

  static const Color textColor333333 = Color(0xff333333);

  static const Color textColor666666 = Color(0xff666666);

  static const Color textColor999999 = Color(0xff999999);

  static const Color textColorc6c6c6 = Color(0xffc6c6c6);

  static const Color textColorf24724 = Color(0xfff24724);

  static const Color textColorfe373c = Color(0xfffe373c);

  static const Color textColorff802b = Color(0xffFF802B);

  static const Color white = Color(0xffffffff);

  static const Color black = Color(0xff000000);

  // 输入框背景
  static const Color inputBgColorf7f7f7 = Color(0xfff7f7f7);

  static const Color inputBgColorf2f4f6 = Color(0xfff2f4f6);

  /// 按钮渐变
  static const Color btnColorfe373c = Color(0xfffe373c);

  static const Color btnColor88fe373c = Color(0x88fe373c);

  static const Color btnColorff6c65 = Color(0xffff6c65);

  static const Color btnColorfd5439 = Color(0xfffd5439);

  static const Color btnColord8d8d8 = Color(0xffd8d8d8);

  /// 分割线颜色
  static const Color colore1e1e1 = Color(0xffE1E1E1);

  static const Color color979797 = Color(0xff979797);

  static const Color coloredadada = Color(0xffdadada);

  static const Color color444444 = Color(0xff444444);

  /// 页面背景
  static const Color bgColorf2f4f8 = Color(0xfff2f4f8);
  static const Color textColorff002e = Color(0xffff002e);
  static const Color colordadada = Color(0xffdadada);
  static const Color colorb7bdc3 = Color(0x7fb7bdc3);
  static const Color colorffe9ea = Color(0xffffe9ea);
}

class SMSize {
  static const dp8 = 8.0;
  static const dp9 = 9.0;
  static const dp10 = 10.0;
  static const dp11 = 11.0;
  static const dp12 = 12.0;
  static const dp13 = 13.0;
  static const dp14 = 14.0;
  static const dp15 = 15.0;
  static const dp16 = 16.0;
  static const dp17 = 17.0;
  static const dp18 = 18.0;
  static const dp19 = 19.0;
  static const dp20 = 20.0;
  static const dp21 = 21.0;
  static const dp39 = 39.0;

  static const space5 = 5.0;
  static const space10 = 10.0;
  static const space15 = 15.0;
  static const space20 = 20.0;
  static const space25 = 25.0;
  static const space30 = 30.0;
  static const space50 = 50.0;
}

// 文本样式
class SMTxtStyle {
  static const color111dp18Bold = SMTextStyle(
    color: SMColors.textColor111111,
    fontSize: SMSize.dp18,
    fontWeight: FontWeight.bold,
  );

  static const color111dp18h14Bold = SMTextStyle(
    color: SMColors.textColor111111,
    fontSize: SMSize.dp18,
    fontWeight: FontWeight.bold,
    height: 2.0,
  );

  static const color111dp21Bold = SMTextStyle(
      color: SMColors.textColor111111,
      fontSize: SMSize.dp21,
      fontWeight: FontWeight.bold);
  static const color111dp18 = SMTextStyle(
    color: SMColors.textColor111111,
    fontSize: SMSize.dp18,
  );
  static const color111dp14 = SMTextStyle(
    color: SMColors.textColor111111,
    fontSize: SMSize.dp14,
  );

  static const color111dp16 = SMTextStyle(
    color: SMColors.textColor111111,
    fontSize: SMSize.dp16,
  );

  static const color111dp16Bold = SMTextStyle(
    color: SMColors.textColor111111,
    fontSize: SMSize.dp16,
    fontWeight: FontWeight.bold,
  );

  static const color333dp18 = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp18,
  );

  static const color333dp18Bold = SMTextStyle(
      color: SMColors.textColor333333,
      fontSize: SMSize.dp18,
      fontWeight: FontWeight.bold);

  static const color333dp9 = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp9,
  );

  static const color333dp12 = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp12,
  );

  static const color333dp12h11 = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp12,
    height: 1.5,
  );

  static const color333dp12h08 = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp12,
    height: 1.2,
  );
  static const color333dp13 = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp13,
  );
  static const color333dp13h11 = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp13,
    height: 1.5,
  );
  static const color333dp13Bold = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp13,
    fontWeight: FontWeight.bold,
  );
  static const color333dp10 = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp10,
  );

  static const color333dp12Bold = SMTextStyle(
      color: SMColors.textColor333333,
      fontSize: SMSize.dp12,
      fontWeight: FontWeight.bold);

  static const color333dp14 = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp14,
    decoration: TextDecoration.none,
  );

  static const color333dp14h05 = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp14,
    height: 0.5,
  );

  static const color333dp14h08 = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp14,
    decoration: TextDecoration.none,
    height: 1.2,
  );

  static const color333dp14h11 = SMTextStyle(
      color: SMColors.textColor333333,
      fontSize: SMSize.dp14,
      decoration: TextDecoration.none,
      height: 1.5);
  static const color333dp21Bold = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp21,
    fontWeight: FontWeight.bold,
  );
  static const color333dp39Bold = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp39,
    fontWeight: FontWeight.bold,
  );

  static const color333dp14Bold = SMTextStyle(
      color: SMColors.textColor333333,
      fontSize: SMSize.dp14,
      fontWeight: FontWeight.w500);

  static const color333dp14h08Bold = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp14,
    fontWeight: FontWeight.bold,
    height: 1.2,
  );

  static const color333dp16 = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp16,
  );

  static const color333dp16Bold = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp16,
    fontWeight: FontWeight.w500,
  );

  static const color333dp16h11Bold = SMTextStyle(
      color: SMColors.textColor333333,
      fontSize: SMSize.dp16,
      fontWeight: FontWeight.bold,
      height: 1.5);

  static const color333dp16h08Bold = SMTextStyle(
    color: SMColors.textColor333333,
    fontSize: SMSize.dp16,
    fontWeight: FontWeight.bold,
  );

  static const color666dp12 = SMTextStyle(
    color: SMColors.textColor666666,
    fontSize: SMSize.dp12,
  );

  static const color666dp12h11 = SMTextStyle(
      color: SMColors.textColor666666, fontSize: SMSize.dp12, height: 1.5);
  static const color666dp14 = SMTextStyle(
    color: SMColors.textColor666666,
    fontSize: SMSize.dp14,
    decoration: TextDecoration.none,
  );
  static const color666dp16 = SMTextStyle(
    color: SMColors.textColor666666,
    fontSize: SMSize.dp16,
  );

  static const color666dp10 = SMTextStyle(
    color: SMColors.textColor666666,
    fontSize: SMSize.dp10,
  );
  static const color666dp11 = SMTextStyle(
    color: SMColors.textColor666666,
    fontSize: SMSize.dp11,
  );
  static const color666dp11bold = SMTextStyle(
    color: SMColors.textColor666666,
    fontSize: SMSize.dp11,
    fontWeight: FontWeight.bold,
  );

  static const color999dp9 = SMTextStyle(
    color: SMColors.textColor999999,
    fontSize: SMSize.dp9,
  );

  static const color999dp14 = SMTextStyle(
    color: SMColors.textColor999999,
    fontSize: SMSize.dp14,
  );

  static const color999dp13 = SMTextStyle(
    color: SMColors.textColor999999,
    fontSize: SMSize.dp13,
  );

  static const color999dp16 = SMTextStyle(
    color: SMColors.textColor999999,
    fontSize: SMSize.dp16,
  );
  static const color999dp15 = SMTextStyle(
    color: SMColors.textColor999999,
    fontSize: SMSize.dp15,
  );

  static const color999dp14Bold = SMTextStyle(
      color: SMColors.textColor999999,
      fontSize: SMSize.dp14,
      fontWeight: FontWeight.bold);

  static const color999dp10 = SMTextStyle(
    color: SMColors.textColor999999,
    fontSize: SMSize.dp10,
  );
  static const color999dp11 = SMTextStyle(
    color: SMColors.textColor999999,
    fontSize: SMSize.dp11,
  );
  static const color999dp11LineThrough = SMTextStyle(
    color: SMColors.textColor999999,
    fontSize: SMSize.dp11,
    decoration: TextDecoration.lineThrough,
  );

  static const color999dp12 = SMTextStyle(
    color: SMColors.textColor999999,
    fontSize: SMSize.dp12,
  );

  static const colorc6c6c6dp10 = SMTextStyle(
    color: SMColors.textColorc6c6c6,
    fontSize: SMSize.dp10,
  );
  static const colorc6c6c6dp11 = SMTextStyle(
    color: SMColors.textColorc6c6c6,
    fontSize: SMSize.dp11,
  );

  static const colorc6c6c6dp12 = SMTextStyle(
    color: SMColors.textColorc6c6c6,
    fontSize: SMSize.dp12,
  );

  static const colorc6c6c6dp14 = SMTextStyle(
    color: SMColors.textColorc6c6c6,
    fontSize: SMSize.dp14,
  );

  static const colorc6c6c6dp18 = SMTextStyle(
    color: SMColors.textColorc6c6c6,
    fontSize: SMSize.dp18,
  );

  static const colorc6c6c6dp14h18 = SMTextStyle(
    color: SMColors.textColorc6c6c6,
    fontSize: SMSize.dp14,
    height: 1.8,
  );

  static const colorf24724dp11Bold = SMTextStyle(
    color: SMColors.textColorf24724,
    fontSize: SMSize.dp11,
    fontWeight: FontWeight.bold,
  );

  static const colorf24724dp14 = SMTextStyle(
    color: SMColors.textColorf24724,
    fontSize: SMSize.dp14,
  );
  static const colorf24724dp18 = SMTextStyle(
    color: SMColors.textColorf24724,
    fontSize: SMSize.dp18,
  );
  static const colorf24724dp18Bold = SMTextStyle(
    color: SMColors.textColorf24724,
    fontSize: SMSize.dp18,
    fontWeight: FontWeight.bold,
  );
  static const colorf24724dp11 = SMTextStyle(
    color: SMColors.textColorf24724,
    fontSize: SMSize.dp11,
  );
  static const colorf24724dp12 = SMTextStyle(
    color: SMColors.textColorf24724,
    fontSize: SMSize.dp12,
  );

  static const colorf24724dp14Bold = SMTextStyle(
      color: SMColors.textColorf24724,
      fontSize: SMSize.dp14,
      fontWeight: FontWeight.bold);

  static const colorfe373cdp11Bold = SMTextStyle(
    color: SMColors.textColorfe373c,
    fontSize: SMSize.dp11,
    fontWeight: FontWeight.bold,
  );

  static const colorfe373cdp12 = SMTextStyle(
    color: SMColors.textColorfe373c,
    fontSize: SMSize.dp12,
  );
  static const colorfe373cdp10 = SMTextStyle(
    color: SMColors.textColorfe373c,
    fontSize: SMSize.dp10,
  );

  static const colorfe373cdp13 = SMTextStyle(
    color: SMColors.textColorfe373c,
    fontSize: SMSize.dp13,
  );
  static const colorfe373cdp8 = SMTextStyle(
    color: SMColors.textColorfe373c,
    fontSize: SMSize.dp8,
  );

  static const colorfe373cdp18 = SMTextStyle(
    color: SMColors.textColorfe373c,
    fontSize: SMSize.dp18,
  );

  static const colorfe373cdp18Bold = SMTextStyle(
    color: SMColors.textColorfe373c,
    fontSize: SMSize.dp18,
    fontWeight: FontWeight.bold,
  );

  static const colorfffdp9 = SMTextStyle(
    color: SMColors.white,
    fontSize: SMSize.dp9,
  );

  static const colorfffdp10 = SMTextStyle(
    color: SMColors.white,
    fontSize: SMSize.dp10,
  );

  static const colorfffdp10h09 = SMTextStyle(
    color: SMColors.white,
    fontSize: SMSize.dp10,
    height: 1.3,
  );

  static const colorfffdp12 = SMTextStyle(
    color: SMColors.white,
    fontSize: SMSize.dp12,
  );

  static const colorfffdp12h11 = SMTextStyle(
    color: SMColors.white,
    fontSize: SMSize.dp12,
    height: 1.5,
  );

  static const colorfe373cdp14 = SMTextStyle(
    color: SMColors.msgTipColor,
    fontSize: SMSize.dp14,
  );
  static const colorfe373cdp14Bold = SMTextStyle(
    color: SMColors.msgTipColor,
    fontSize: SMSize.dp14,
    fontWeight: FontWeight.bold,
  );

  static const colorfe373cdp15 = SMTextStyle(
    color: SMColors.msgTipColor,
    fontSize: SMSize.dp15,
  );

  static const colorfe373cdp16 = SMTextStyle(
    color: SMColors.msgTipColor,
    fontSize: SMSize.dp16,
  );

  static const colorfe373cdp16Bold = SMTextStyle(
    color: SMColors.msgTipColor,
    fontSize: SMSize.dp16,
    fontWeight: FontWeight.w500,
  );

  static const colorfe373cdp14bebasOp05 = SMTextStyle(
    color: SMColors.msgTipColor05,
    fontSize: SMSize.dp14,
    fontFamily: 'Bebas',
  );

  static const colore373cdp18 = SMTextStyle(
    color: SMColors.msgTipColor05,
    fontSize: SMSize.dp18,
  );

  static const colorfffdp14 = SMTextStyle(
    color: SMColors.white,
    fontSize: SMSize.dp14,
  );

  static const colorfffdp14Op06 = SMTextStyle(
    color: SMColors.opacity30CoverWhite,
    fontSize: SMSize.dp14,
  );

  static const colorfffdp16 = SMTextStyle(
    color: SMColors.white,
    fontSize: SMSize.dp16,
  );

  static const colorfffdp18 = SMTextStyle(
    color: SMColors.white,
    fontSize: SMSize.dp18,
  );

  static const colorff802bdp16 = SMTextStyle(
    color: SMColors.textColorff802b,
    fontSize: SMSize.dp16,
  );

  static const colorff802bdp16Bold = SMTextStyle(
    color: SMColors.textColorff802b,
    fontSize: SMSize.dp16,
    fontWeight: FontWeight.bold,
  );

  static const colorff002e15 = SMTextStyle(
    color: SMColors.textColorff002e,
    fontSize: SMSize.dp15,
  );
  static const colorff002e14 = SMTextStyle(
    color: SMColors.textColorff002e,
    fontSize: SMSize.dp14,
  );
}

class SMCommonStyle {
  static BorderRadius borderRadius5 = BorderRadius.all(Radius.circular(5.0));
  static BorderRadius borderRadius10 = BorderRadius.all(Radius.circular(10.0));
  static BorderRadius borderRadius16 = BorderRadius.all(Radius.circular(16.0));
  static BorderRadius borderRadius20 = BorderRadius.all(Radius.circular(20.0));
  static EdgeInsets paddingHori10Vert5 =
      EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0);
  static EdgeInsets paddingHori25Vert20 =
      EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0);
  static EdgeInsets paddingHori25Vert10 =
      EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0);
  static EdgeInsets paddingHori10Vert20 =
      EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0);
  static EdgeInsets paddingHori10Vert15 =
      EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0);
  static EdgeInsets paddingHori15Vert10 =
      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0);
  static EdgeInsets paddingHori15Vert8 =
      EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0);
  static EdgeInsets paddingHori15Vert5 =
      EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0);
  static EdgeInsets paddingHori20Vert15 =
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0);
  static EdgeInsets paddingHori15Vert12 =
      EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0);
  static EdgeInsets paddingHori10 = EdgeInsets.symmetric(horizontal: 10.0);
  static EdgeInsets paddingHori15 = EdgeInsets.symmetric(horizontal: 15.0);
  static EdgeInsets paddingHori20 = EdgeInsets.symmetric(horizontal: 20.0);
  static EdgeInsets paddingHori25 = EdgeInsets.symmetric(horizontal: 25.0);
  static EdgeInsets paddingHori15Top10 =
      EdgeInsets.only(left: 15.0, right: 15.0, top: 10);
  static EdgeInsets paddingHori15Top15Bottom10 =
      EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 10);
  static EdgeInsets paddingTop15Bottom10 = EdgeInsets.only(top: 15, bottom: 10);
  static EdgeInsets paddingTop10Bottom15 = EdgeInsets.only(top: 10, bottom: 15);
  static EdgeInsets paddingVert12 = EdgeInsets.symmetric(vertical: 12.0);
  static EdgeInsets paddingVert10 = EdgeInsets.symmetric(vertical: 10.0);
  static EdgeInsets paddingVert15 = EdgeInsets.symmetric(vertical: 15.0);
  static EdgeInsets paddingVert20 = EdgeInsets.symmetric(vertical: 20.0);
  static EdgeInsets paddingVert5 = EdgeInsets.symmetric(vertical: 5.0);
  static EdgeInsets paddingVert7 = EdgeInsets.symmetric(vertical: 7.0);
  static EdgeInsets padding5 = EdgeInsets.all(5.0);
  static EdgeInsets padding10 = EdgeInsets.all(10.0);
  static EdgeInsets paddingHor48 = EdgeInsets.symmetric(horizontal: 48.0);
  static EdgeInsets padding15 = EdgeInsets.all(15.0);
  static EdgeInsets padding15Left = EdgeInsets.only(left: 15.0);
  static EdgeInsets padding20 = EdgeInsets.all(20.0);
  static EdgeInsets btnPadding =
      EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0);
  static Border border05White = Border.all(width: 0.5, color: SMColors.white);
  static Border border051e1e1e =
      Border.all(width: 0.5, color: SMColors.colore1e1e1);
  static Border border05979797 =
      Border.all(width: 0.5, color: SMColors.color979797);
  static Border borderBottom03Gray =
      Border(bottom: BorderSide(width: 0.3, color: SMColors.grayLineColor));
  static Border borderBottom05Colordadada =
      Border(bottom: BorderSide(width: 0.5, color: SMColors.coloredadada));
  static Border borderBottom05Color1e1e1e =
      Border(bottom: BorderSide(width: 0.5, color: SMColors.colore1e1e1));
  static Border borderTop05Color1e1e1e =
      Border(top: BorderSide(width: 0.5, color: SMColors.colore1e1e1));
  static Border borderTopBottom05Color1e1e1e = Border(
      bottom: BorderSide(width: 0.5, color: SMColors.colore1e1e1),
      top: BorderSide(width: 0.5, color: SMColors.colore1e1e1));
  static Border borderTop05Gray =
      Border(top: BorderSide(width: 0.5, color: SMColors.grayLineColor));
  static Border borderBottom03Transparent =
      Border(bottom: BorderSide(width: 0.3, color: SMColors.transparent));
}

class SMIcons {
  static const String ICON_BACK = 'static/img/common/icon_back.png';
}
