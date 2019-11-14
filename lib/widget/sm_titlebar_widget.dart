import 'package:flutter/material.dart';
import 'package:flutter_app_redux/common/utils/screen_util.dart';
import 'package:flutter_app_redux/common/utils/style_utils.dart';
import 'package:flutter_app_redux/navigator/navigator_utils.dart';
import 'package:flutter_app_redux/widget/sm_click_button.dart';
import 'package:flutter_app_redux/widget/sm_textstyle.dart';

class SMTitleBarWidget extends StatefulWidget implements PreferredSizeWidget{
  final Widget leftWidget;
  final VoidCallback leftLick;
  final String title;
  final String rightTitle;
  final Widget rightWidget;
  final VoidCallback rightClick;
  final bool needLeftBack;
  // 样式
  final bool isDefault; // 默认白底黑字
  final Color bgColor;
  final Color backIconColor;

  final bool showBottomLine;



  SMTitleBarWidget({this.leftWidget, this.leftLick, this.title, this.rightTitle, this.rightWidget, this.rightClick, this.isDefault = true, this.bgColor, this.backIconColor, this.needLeftBack = true, this.showBottomLine = true});

  @override
  _SMTitleBarWidgetState createState() => _SMTitleBarWidgetState();

  @override
  Size get preferredSize => Size.fromHeight(Style.containH);
}

class _SMTitleBarWidgetState extends State<SMTitleBarWidget>{

  @override
  Widget build(BuildContext context) {
    SMTextStyle titleTextStyle = widget.isDefault ? SMTxtStyle.color111dp18 :SMTxtStyle.color111dp18;
    SMTextStyle rightTitleTextStyle = widget.isDefault ? SMTxtStyle.color666dp14 :SMTxtStyle.colorfffdp14;
    Color containBg = widget.bgColor != null ? widget.bgColor : (widget.isDefault ? SMColors.white : SMColors.black);
    Color backIconColor = widget.backIconColor != null ? widget.backIconColor : (widget.isDefault ? SMColors.black : SMColors.white);

    return Container(
      height: Style.containH + ScreenUtil.getInstance().statusBarHeight,
      padding: EdgeInsets.only(top: ScreenUtil.getInstance().statusBarHeight, left: Style.containPadHori, right: Style.containPadHori),
      decoration: BoxDecoration(
        color: containBg,
        border: widget.showBottomLine ? SMCommonStyle.borderBottom05Colordadada : null,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          /*左边*/
          Positioned(
            left: 0,
            child: Container(
              width: Style.leftRightContainW,
              alignment: Alignment.centerLeft,
              child: widget.needLeftBack ? SMClickButton(
                onTap: () {
                  if (widget.leftWidget == null && widget.leftLick == null) {
                    NavigatorUtils.getInstance().pop(context);
                  } else {
                    widget.leftLick?.call();
                  }
                },
                child: Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.all(10.0),
                  child: widget.leftWidget == null ? Image.asset(SMIcons.ICON_BACK,width: Style.leftImgSize, height: Style.leftImgSize, fit: BoxFit.contain, color: backIconColor,) : widget.leftWidget,
                ),
              ): Container(),
            ),
          ),
          Positioned(child: Text(widget.title ??'', style: titleTextStyle)),
          /*右边*/
          Positioned(
            right: 0,
            child: Container(
              width: Style.leftRightContainW,
              alignment: Alignment.centerRight,
              child: SMClickButton(
                onTap: () {
                  if (widget.rightWidget != null || widget.rightTitle != null) {
                    widget.rightClick?.call();
                  }
                },
                child: Container(
                  color: Colors.transparent,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.all(10.0),
                  child: widget.rightWidget == null ? Text(widget.rightTitle ??'', style: rightTitleTextStyle): widget.rightWidget,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Style {
  static double containH = ScreenUtil.getInstance().getWidth(44.0);
  static double containPadBott = ScreenUtil.getInstance().getWidth(5.0);
  static double containPadHori = ScreenUtil.getInstance().getWidth(5.0);
  static double leftImgSize = ScreenUtil.getInstance().getWidth(20.0);
  static double leftRightContainW = ScreenUtil.getInstance().getWidth(120.0);


}
