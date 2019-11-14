import 'package:flutter/material.dart';
import 'package:flutter_app_redux/common/utils/screen_util.dart';
import 'package:flutter_app_redux/common/utils/style_utils.dart';
import 'package:flutter_app_redux/navigator/navigator_utils.dart';
import 'package:flutter_app_redux/widget/sm_button_widget.dart';
import 'package:flutter_app_redux/widget/sm_textstyle.dart';
import 'package:flutter_app_redux/widget/sm_titlebar_widget.dart';

class ImagePreviewDemo extends StatefulWidget {
  static final String sName = "image_preview_demo";

  @override
  _ImagePreviewDemoState createState() => _ImagePreviewDemoState();
}

class _ImagePreviewDemoState extends State<ImagePreviewDemo> {
  String tagPre = ImagePreviewDemo.sName + DateTime.now().toIso8601String();
  List<String> imgList = ['https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568095130569&di=8824186ff5af330f91b2f45182738f42&imgtype=0&src=http%3A%2F%2Fpic33.nipic.com%2F20131007%2F13639685_123501617185_2.jpg', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568095130569&di=10d231aa1e1f077b2c495fa4fa782809&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2Fc%2F53cdd1f7c1f21.jpg', 'https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1568085115&di=516dadd1f59b0bfcf5ec64fd713451f7&src=http://pic31.nipic.com/20130705/9527735_231540074000_2.jpg', "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568095924977&di=ec4045b97faf4174e8f219f00dbc67d6&imgtype=0&src=http%3A%2F%2Fpic14.nipic.com%2F20110610%2F7534481_215116317165_2.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SMTitleBarWidget(
        title: '图片预览Demo',
      ),
      body: Column(
        children: <Widget>[

          Text('登录', style: SMTextStyle(fontFamily:  'Black', fontSize: 24,),),
          Text('Test', style: SMTextStyle(fontFamily:  'Bebas', fontSize: 24,),),
          SMButtonWidget(text: '下一步', buttonType: SMButtonType.RedBg,),
          SizedBox(height: 10,),
          SMButtonWidget(text: '下一步2', buttonType: SMButtonType.GrayBg,),
          Text('xixixix:' + ScreenUtil.getInstance().screenWidth.toString()),
          Text(ScreenUtil.getInstance().getWidth(40.0).toString()),
          Text('ahahahah'),
          Text(SMColors.btnColord8d8d8.toString()),
          Text('hehehehe'),
          Text(SMTxtStyle.color999dp14.toString()),
          SizedBox(height: 10,),
          SMButtonWidget(text: '下一步', buttonType: SMButtonType.RedBorder,),
          SizedBox(height: 10,),

        ],
      ),
    );
  }
}
