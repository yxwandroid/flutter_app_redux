import 'dart:async';
import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_app_redux/common/store/store_manager.dart';

class CommonUtils {

  static bool isLogin() {
    return StoreManager.store.state.userState.userInfo != null;
  }

  // 防抖函数: eg:输入框连续输入，用户停止操作300ms才执行访问接口
  static const deFaultDurationTime = 300;
  static Timer timer;

  static antiShake(Function doSomething, {durationTime = deFaultDurationTime}) {
    timer?.cancel();
    timer = new Timer(Duration(milliseconds: durationTime), () {
      doSomething?.call();
      timer = null;
    });
  }

  // 节流函数: eg:300ms内，只会触发一次
  static int startTime = 0;

  static throttle(Function doSomething, {durationTime = deFaultDurationTime}) {
    int currentTime = DateTime.now().millisecondsSinceEpoch;
    if (currentTime - startTime > durationTime) {
      doSomething?.call();
      startTime = DateTime.now().millisecondsSinceEpoch;
    }
  }

  // md5 加密
  static String generateMd5(String data) {
    var content = new Utf8Encoder().convert(data);
    var digest = md5.convert(content);
    // 这里其实就是 digest.toString()
    return hex.encode(digest.bytes);
  }
}
