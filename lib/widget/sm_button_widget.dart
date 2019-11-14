import 'package:flutter/material.dart';
import 'package:flutter_app_redux/common/utils/screen_util.dart';
import 'package:flutter_app_redux/common/utils/style_utils.dart';
import 'package:flutter_app_redux/widget/sm_click_button.dart';

import 'sm_textstyle.dart';

enum SMButtonType {
  GrayBg, // 无渐变，灰色背景
  RedBg, // 径向渐变
  HorizontalBg, // 左右渐变
  GrayBorder, // 边框按钮
  RedBorder, // 边框按钮

}

class SMButtonWidget extends StatelessWidget {
  double width;

  double height;

  final String text;

  final SMTextStyle textStyle;

  final VoidCallback onPress;

  final double borderRadis;

  final Color borderColor;

  EdgeInsetsGeometry btnPadding;

  final SMButtonType buttonType;
  final bool boldBorder;

  SMButtonWidget({
    Key key,
    this.width,
    this.height,
    @required this.text,
    this.textStyle,
    this.onPress,
    this.borderRadis,
    this.btnPadding,
    this.buttonType = SMButtonType.RedBg,
    this.borderColor,
    this.boldBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Gradient gradient;
    SMTextStyle textS;
    List<BoxShadow> boxShadow;
    Color color;
    BoxBorder border;
    DecorationImage decorationImage;

    switch (buttonType) {
      case SMButtonType.GrayBg:
        this.width = width ?? _Style.containW;
        this.height = height ?? _Style.containH;
        color = SMColors.btnColord8d8d8;
        textS = SMTxtStyle.color999dp14;
        break;
      case SMButtonType.RedBg:
//        this.width = width ?? _Style.containW;
//        this.height = height ?? _Style.redContainH;
//        textS = SMTxtStyle.colorfffdp14;
//        btnPadding = EdgeInsets.only(bottom: SMSize.space10);
//        decorationImage = DecorationImage(image: AssetImage(SMIcons.REDBTN_BG), fit: BoxFit.fitHeight);

        this.width = width ?? _Style.containW;
        this.height = height ?? _Style.containH;
        textS = SMTxtStyle.colorfffdp14;
        gradient = RadialGradient(
            colors: [SMColors.btnColorfd5439, SMColors.btnColorfe373c],
            center: Alignment(0.0, -2.0),
            radius: 2,
            tileMode: TileMode.clamp,
            stops: [0.2, 0.8]);
        boxShadow = [
          BoxShadow(
            color: SMColors.opacity30CoverRed,
            offset: Offset(0, 8),
            blurRadius: 10,
          ),
        ];
        break;
      case SMButtonType.HorizontalBg:
        gradient = LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [SMColors.btnColorfe373c, SMColors.btnColorff6c65],
            tileMode: TileMode.repeated);
        break;
      case SMButtonType.RedBorder:
        this.width = width ?? _Style.borderContainW;
        this.height = height ?? _Style.borderContainH;
        border = Border.all(width: boldBorder == true ? 1 : 0.5, color: SMColors.btnColorfe373c);
        textS = SMTxtStyle.colorfe373cdp12;
        break;
      case SMButtonType.GrayBorder:
        this.width = width ?? _Style.borderContainW;
        this.height = height ??_Style.borderContainH;
        border = Border.all(width: 0.5, color: SMColors.textColor333333);
        textS = SMTxtStyle.color333dp12;
        break;
    }

    return SMClickButton(
      onTap: () {
        this.onPress?.call();
      },
      child: Container(
        padding: btnPadding ?? SMCommonStyle.btnPadding,
        alignment: Alignment.center,
        width: this.width,
        height: this.height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
              Radius.circular(borderRadis ?? _Style.borderRadius)),
          gradient: gradient,
          boxShadow: boxShadow,
          border: border,
          image: decorationImage,
        ),
        child: Text(
          this.text,
          style: this.textStyle ?? textS,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class _Style {
  static double containW = ScreenUtil.getInstance().screenWidth -
      ScreenUtil.getInstance().getWidth(30.0);
  static double containH = ScreenUtil.getInstance().getWidth(40.0);
  static double redContainH = ScreenUtil.getInstance().getWidth(65.0);
  static double borderRadius = ScreenUtil.getInstance().getWidth(20.0);
  static double borderContainW = ScreenUtil.getInstance().getWidth(78.0);
  static double borderContainH = ScreenUtil.getInstance().getWidth(30.0);
}
