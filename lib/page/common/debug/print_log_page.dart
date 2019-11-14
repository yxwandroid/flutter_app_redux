import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_redux/common/config/config.dart';
import 'dart:math';

import 'package:flutter_app_redux/common/service/print_log_service.dart';
import 'package:flutter_app_redux/common/utils/common_util.dart';
import 'package:flutter_app_redux/common/utils/screen_util.dart';
import 'package:flutter_app_redux/common/utils/storage_util.dart';
import 'package:flutter_app_redux/common/utils/style_utils.dart';
import 'package:flutter_app_redux/common/utils/toast_util.dart';
import 'package:flutter_app_redux/widget/sm_input_widget.dart';
import 'package:flutter_app_redux/widget/sm_textstyle.dart';
import 'package:flutter_app_redux/widget/sm_titlebar_widget.dart';



class PrintLogPage extends StatefulWidget {
  static final String sName = "print_log";

  @override
  _PrintLogPageState createState() => new _PrintLogPageState();
}

class _PrintLogPageState extends State<PrintLogPage> {
  Random random = new Random();
  List<dynamic> printListResult = [];
  List<dynamic> printListUI = [];
  final TextEditingController _searchController = new TextEditingController();


  @override
  void initState() {
    super.initState();
    getLog();
  }

  getLog() async {
    List<dynamic> tmpPrintList = await PrintLogService.getInstance().getFromSP();
    printListResult = tmpPrintList.reversed.toList();
    this.setState((){
      printListUI = printListResult;
    });
  }
  
  @override
  Widget build(BuildContext context) {
     Widget body = ListView.builder(
      itemCount: printListUI.length,
      itemBuilder: (BuildContext context, int index) {
        Color color = Color.fromRGBO(random.nextInt(200), random.nextInt(200), random.nextInt(200), 1);
        return GestureDetector(
          onLongPress: () {_onLongPress(printListUI[index]);},
          child: Text(printListUI[index], style: SMTextStyle(color: color),),
        );
      },
    );

    return Scaffold(
      appBar: SMTitleBarWidget(
        title: '打印日志',
        rightTitle: '清空',
        rightClick: () async {
          await StorageManager.getInstance().remove(Config.PRINTLOG_KEY);
          getLog();
        },
      ),
      body: Column(
        children: <Widget>[
          SMInputWidget(
            style: SMTxtStyle.color333dp16,
//            cursorColor: SMColors.loginTitleTextBlue,
            decoration:InputDecoration(
                contentPadding: EdgeInsets.only(
                  top: ScreenUtil.getInstance().getWidth(15.0),
                  bottom: ScreenUtil.getInstance().getWidth(18.0),
                ),
                hintText: '输入查询log的key',
                hintStyle: SMTxtStyle.color999dp14,
                border: InputBorder.none
            ),
            controller: _searchController,
            onChanged: (String value) {
              CommonUtils.antiShake(() {
                this._searchLog();
              });
            },
          ),
          Expanded(
            child: body,
          ),
        ],
      ),
    );
  }

  _searchLog() {
    List<String> tmpPrintList = [];
    for(String printLog in printListResult) {
      if (printLog.contains(_searchController.text)) {
        tmpPrintList.add(printLog);
      }
    }
    setState(() {
      printListUI = tmpPrintList;
    });
  }

  _onLongPress(String copyText) async {
    if (copyText != null && copyText.isNotEmpty) {
      await Clipboard.setData(new ClipboardData(text: copyText));
      ToastUtil.showGreen('复制到剪切板');
    }
  }
}
