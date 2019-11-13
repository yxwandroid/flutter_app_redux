
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
  // 微信appId
  static const wechatAppId = 'wx6ec33639e77ca7a8';
  static const aliAppId = '2019090767063089';
  // 腾讯播放器appId
  static const tencentAppId = 1259801863;

  /// //////////////////////////////////////常量////////////////////////////////////// ///
  static const TOKEN_KEY = "token";
  static const USERINFO_KEY = "userinfo";
  static const DB_NAME = "zhibo.db";
  static const NETLOG_KEY = "net_log";
  static const PRINTLOG_KEY = "print_log";
  static const ANSWER_KEY = "answer_save";
  static const UPDATE_IGNORE = "updateIgnore";




  // 跳转页面延时操作
  static const JUMP_PAGE_DELAY = 200;
  static int PLAY_END = 2147483647;


}

class PackageType {
  static const android = "android";
  static const ios = "ios";
}

class ThumbImgSize {
  static const String avatar_100_100 = '?imageMogr2/thumbnail/100x100';
  static const String thumb_200_200 = '?imageMogr2/thumbnail/200x200';
  static const String thumb_400_400 = '?imageMogr2/thumbnail/400x400';
}