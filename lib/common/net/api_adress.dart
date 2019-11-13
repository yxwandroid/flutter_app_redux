
import 'package:flutter_app_redux/common/config/config.dart';

enum APIType {
  // 局域网
  DEV,
  // 外侧
  STAGING,
  // 线上
  PRODUCTION
}

Map<APIType, String> apiMap = {
  APIType.STAGING: 'http://114.67.74.108:8082',
  APIType.PRODUCTION: 'http://152.136.193.176:8001',
};

class ApiAddress {
  static final String host = apiMap[Config.API_SETTING];
  static final String api_Host = '$host/api';

  ///登录接口
  static login() {
    return '/feedback/submit';
  }
}
