import 'package:flutter/material.dart';
import 'package:flutter_app_redux/common/config/config.dart';
import 'package:flutter_app_redux/common/service/print_log_service.dart';

class LogUtil {
  static const paddingSize = 15;
  static const firstLineSymbol = "-->";

  static i(String tagName, Object o, {Object o1, Object o2, Object o3, bool ifSaveSp = false} ) {
    StringBuffer buffer = StringBuffer();

    buffer.write(firstLineSymbol);

    for (int i = 0; i < paddingSize - tagName.length; i++) {
      buffer.write(" ");
    }

    buffer.write(tagName);

    [o, o1, o2, o3].forEach((o) {
      if (o != null) buffer.write(" - ${o.toString()}");
    });


    debugPrint(buffer.toString());
    if (Config.DEBUG_ENTER && ifSaveSp) {
      return PrintLogService.getInstance().saveToSP(buffer.toString());
    }
  }
}