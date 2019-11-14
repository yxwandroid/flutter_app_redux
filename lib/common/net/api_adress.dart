
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
  APIType.STAGING: 'http://49.234.5.92:8080',
  APIType.PRODUCTION: 'http://49.234.5.92:8080',
};
class ApiAddress {
  static final String host = apiMap[Config.API_SETTING];
  static final String api_Host = '$host/nfc';


  //登录
  static loginByPwd() {
    return '/user/login';
  }

}
