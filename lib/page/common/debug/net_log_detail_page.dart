import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_redux/common/model/http/net_log_entity.dart';
import 'package:flutter_app_redux/common/utils/style_utils.dart';
import 'package:flutter_app_redux/common/utils/toast_util.dart';
import 'package:flutter_app_redux/widget/sm_titlebar_widget.dart';

class NetLogDetailPage extends StatefulWidget {
  static final String sName = "net_log_detail";
  NetLogEntity netLogEntity;

  NetLogDetailPage({this.netLogEntity});

  @override
  _NetLogDetailPageState createState() => _NetLogDetailPageState();
}

class _NetLogDetailPageState extends State<NetLogDetailPage> {
  @override
  Widget build(BuildContext context) {
    NetLogEntity netLogEntity = widget.netLogEntity;
    return Scaffold(
        appBar: SMTitleBarWidget(
          title: '请求详情',
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListTile(title: Text('url', style: SMTxtStyle.colorf24724dp14), subtitle: Text(netLogEntity.url, style: SMTxtStyle.color666dp12,), onLongPress: () {_onLongPress(netLogEntity.url);},),
              ListTile(title: Text('method', style: SMTxtStyle.colorf24724dp14), subtitle: Text(netLogEntity.method, style: SMTxtStyle.color666dp12,),),
              ListTile(title: Text('status', style: SMTxtStyle.colorf24724dp14), subtitle: Text(netLogEntity.status != null ? netLogEntity.status.toString() : '', style: SMTxtStyle.color666dp12,),),
              ListTile(title: Text('timeLime', style: SMTxtStyle.colorf24724dp14), subtitle: Text('请求时间：${netLogEntity.requestTime.toLocal()} \n收到响应：${netLogEntity.responseTime?.toLocal()} \n报错：${netLogEntity.errorTime?.toLocal()}', style: SMTxtStyle.color666dp12,),),
              ListTile(title: Text('requestHeader', style: SMTxtStyle.colorf24724dp14), subtitle: Text(netLogEntity.requestHeader ?? '', style: SMTxtStyle.color666dp12,), onLongPress: () {_onLongPress(netLogEntity.requestHeader);},),
//              ListTile(title: Text('queryParameters', style: SMTxtStyle.colorf24724dp14), subtitle: Text(netLogEntity.queryParameters ?? '', style: SMTxtStyle.color666dp12,), onLongPress: () {_onLongPress(netLogEntity.queryParameters);},),
              ListTile(title: Text('requestBody', style: SMTxtStyle.colorf24724dp14), subtitle: Text(netLogEntity.requestBody ?? '', style: SMTxtStyle.color666dp12,), onLongPress: () {_onLongPress(netLogEntity.requestBody);},),
              ListTile(title: Text('responseBody', style: SMTxtStyle.colorf24724dp14), subtitle: Text(_dealResponseBody(netLogEntity.responseBody), style: SMTxtStyle.color666dp12,), onLongPress: () {_onLongPress(netLogEntity.responseBody);},),
              ListTile(title: Text('error', style: SMTxtStyle.colorf24724dp14), subtitle: Text(netLogEntity.error ?? '', style: SMTxtStyle.color666dp12,), onLongPress: () {_onLongPress(netLogEntity.error);},),
            ],
          ),
        ));
  }

  _dealResponseBody(String responseBody) {
    String targetStr = '';
    if (responseBody != null) {
      targetStr = responseBody.replaceAll(",", ",\n").replaceAll("{", "{\n").replaceAll("[", "[\n").replaceAll("\"}", "\"\n}").replaceAll("\"]", "\"\n]");
    }
    return targetStr;
  }

  _onLongPress(String copyText) async {
    if (copyText != null && copyText.isNotEmpty) {
      await Clipboard.setData(new ClipboardData(text: copyText));
      ToastUtil.showGreen('复制到剪切板');
    }
  }
}
