
import 'package:flutter_app_redux/common/net/code.dart';

class ResponseResult<T> {
  T data;
  int statusCode;
  int code;
  String message;
  // 访问异常时返回的原始数据
  dynamic sourceData;
  ResponseResult();
  ResponseResult.from(this.statusCode, {this.data, this.code, this.message});

  void fillData(int statusCode, sourceData, T data, int code, String message) {
    this.statusCode = statusCode;
    this.sourceData = sourceData;
    this.data = data;
    this.code = code;
    this.message = message;
  }


  @override
  String toString() {
    return 'ResponseResult{data: $data, statusCode: $statusCode, code: $code, message: $message, sourceData: $sourceData}';
  }


  // 业务成功
  bool get isSuccess => code == Code.CODE_ALL_SUCCESS;

}

