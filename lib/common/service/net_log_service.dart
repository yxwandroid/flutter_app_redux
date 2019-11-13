import 'dart:convert';

import 'package:flutter_app_redux/common/config/config.dart';
import 'package:flutter_app_redux/common/model/http/net_log_entity.dart';
import 'package:flutter_app_redux/common/utils/storage_util.dart';

class NetLogService {
  static NetLogService _instance;

  static NetLogService getInstance() {
    if (_instance == null) {
      _instance = new NetLogService();
    }
    return _instance;
  }

  saveToSP(NetLogEntity netLogEntity) async{
    String netLogListTxt = await StorageManager.getInstance().get(Config.NETLOG_KEY);
    if (netLogListTxt.isNotEmpty) {
      NetLogEntityList netLogEntityList = NetLogEntityList.fromJson(json.decode(netLogListTxt));
      netLogEntityList.netLogEntityList.add(netLogEntity);
      StorageManager.getInstance().save(Config.NETLOG_KEY, json.encode(netLogEntityList));
    } else {
      StorageManager.getInstance().save(Config.NETLOG_KEY, json.encode(new NetLogEntityList(netLogEntityList: [netLogEntity])));
    }

  }

  Future<NetLogEntityList> getFromSP() async {
    NetLogEntityList targetNetLogEntityList;
    String netLogListTxt = await StorageManager.getInstance().get(Config.NETLOG_KEY);
    if (netLogListTxt.isNotEmpty) {
      NetLogEntityList netLogEntityList = NetLogEntityList.fromJson(json.decode(netLogListTxt));
      targetNetLogEntityList =  netLogEntityList;
    }
    return targetNetLogEntityList;
  }



}