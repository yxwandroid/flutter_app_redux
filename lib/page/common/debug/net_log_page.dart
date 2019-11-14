import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_redux/common/config/config.dart';
import 'package:flutter_app_redux/common/model/http/net_log_entity.dart';
import 'package:flutter_app_redux/common/service/net_log_service.dart';
import 'package:flutter_app_redux/common/utils/storage_util.dart';
import 'package:flutter_app_redux/common/utils/style_utils.dart';
import 'package:flutter_app_redux/navigator/navigator_utils.dart';
import 'package:flutter_app_redux/page/common/debug/net_log_detail_page.dart';
import 'package:flutter_app_redux/widget/sm_card_container_widget.dart';
import 'package:flutter_app_redux/widget/sm_click_button.dart';
import 'package:flutter_app_redux/widget/sm_titlebar_widget.dart';


class NetLogPage extends StatefulWidget {
  static final String sName = "net_log";

  @override
  _NetLogPageState createState() => _NetLogPageState();
}

class _NetLogPageState extends State<NetLogPage> {
  NetLogEntityList netLogEntityList;
  List<NetLogEntity> targetNetLogEntityList;
  @override
  void initState() {
    super.initState();
    getLog();
  }

  Future getLog() async {
    NetLogEntityList spNetLogEntityList = await NetLogService.getInstance().getFromSP();
    netLogEntityList = spNetLogEntityList;
    if (netLogEntityList != null) {
      targetNetLogEntityList = netLogEntityList.netLogEntityList.reversed.toList();
    } else {
      targetNetLogEntityList = [];
    }
    this.setState((){});
  }

  @override
  Widget build(BuildContext context) {
    Widget body;
    if (netLogEntityList != null) {
      body = ListView.builder(
        itemCount: targetNetLogEntityList.length,
        itemBuilder: (BuildContext context, int index) {
          return SMClickButton(
            onTap: () {
              NavigatorUtils.getInstance().pushNamed(context, NetLogDetailPage.sName, builder: (context) => NetLogDetailPage(netLogEntity: targetNetLogEntityList[index],));
            },
            child: SMCardContainerWidget(
              margin: SMCommonStyle.paddingHori10Vert5,
              padding: SMCommonStyle.padding10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('${targetNetLogEntityList[index].url} [${targetNetLogEntityList[index].method}]', style: SMTxtStyle.color333dp14,),
                  SizedBox(height: 5,),
                  Text(targetNetLogEntityList[index].requestTime.toLocal().toString(), style: SMTxtStyle.color666dp12,)
                ],
              ),
            ),
          );
        },
      );
    } else {
      body = Container();
    }

    return Scaffold(
      appBar: SMTitleBarWidget(
        title: '请求日志',
        rightTitle: '清空',
        rightClick: () async {
          await StorageManager.getInstance().remove(Config.NETLOG_KEY);
          getLog();
        },
      ),
      body: Container(
        child: body,
      ),
    );


  }

}
