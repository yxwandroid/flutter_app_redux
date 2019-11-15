import 'package:flutter_app_redux/common/net/index.dart';

class Config {
  // API 环境
  static const API_SETTING = APIType.STAGING;

  // bugly上报
  static const REPORT_CRASH = false;

  // Debug入口
  static const DEBUG_ENTER = true;

  // 请求超时时间
  static const HTTP_TIMEOUT = 5000;

  // 分页数量
  static const PAGE_SIZE = 10;

  /// //////////////////////////////////////常量////////////////////////////////////// ///
  static const TOKEN_KEY = "token";
  static const NETLOG_KEY = "net_log";
  static const PRINTLOG_KEY = "print_log";

  // 跳转页面延时操作
  static const JUMP_PAGE_DELAY = 200;
}
