import 'package:flutter_app_redux/common/model/http/response_result.dart';
import 'package:flutter_app_redux/common/model/userinfo_model.dart';
import 'package:flutter_app_redux/common/net/api_adress.dart';
import 'package:flutter_app_redux/common/net/http_manager.dart';
import 'package:flutter_app_redux/common/utils/log_util.dart';

class UserDao {
  static final String sName = "UserDao";

  ///账号密码登录
  static loginByPwd(String phone, String pwd) async {
    Map requestParams = {
      "password": pwd,
      "username": phone,
    };

    ResponseResult<UserInfoModel> response = await HttpManager.netFetch<UserInfoModel>(
        ApiAddress.loginByPwd(), requestParams, NetMethod.POST);
    LogUtil.i(sName, 'loginByPwd response: $response',ifSaveSp: true);

    if (response.isSuccess) {
      UserInfoModel userInfo = response.data;
      HttpManager.clearToken();
    }
    return response;
  }
}
