import 'dart:convert';

import 'package:flutter_app_redux/common/config/config.dart';
import 'package:flutter_app_redux/common/utils/storage_util.dart';


class PrintLogService {
  static PrintLogService _instance;

  static PrintLogService getInstance() {
    if (_instance == null) {
      _instance = new PrintLogService();
    }
    return _instance;
  }

  saveToSP(dynamic logStr) async{
    String printLogListTxt = await StorageManager.getInstance().get(Config.PRINTLOG_KEY);
    if (printLogListTxt.isNotEmpty) {
      List<dynamic> printLogList = json.decode(printLogListTxt);
      printLogList.add(logStr);
      StorageManager.getInstance().save(Config.PRINTLOG_KEY, json.encode(printLogList));
    } else {
      return StorageManager.getInstance().save(Config.PRINTLOG_KEY, json.encode([logStr]));
    }

  }

  Future<List<dynamic>> getFromSP() async {
    String printLogListTxt = await StorageManager.getInstance().get(Config.PRINTLOG_KEY);
    List<dynamic> printLogList = [];
    if (printLogListTxt.isNotEmpty) {
      printLogList = json.decode(printLogListTxt);
    }
    return printLogList;
  }



}