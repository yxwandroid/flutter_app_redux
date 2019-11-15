
class NetLogEntityList {
  List<NetLogEntity> netLogEntityList;

  NetLogEntityList({this.netLogEntityList});

  factory NetLogEntityList.fromJson(Map<String, dynamic> json) {
    return NetLogEntityList(
        netLogEntityList: (json['netLogEntityList'] as List)
            ?.map((e) => e == null
                ? null
                : NetLogEntity.fromJson(e as Map<String, dynamic>))
            ?.toList());
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'netLogEntityList': this.netLogEntityList};
  }

  NetLogEntityList.empty();
}

class NetLogEntity {
  String url;
  DateTime requestTime;
  String method;
  int status;
  String timeLine;
  String requestHeader;
  String requestBody;
  DateTime responseTime;
  String responseBody;
  String error;
  DateTime errorTime;

  NetLogEntity(
      {this.url,
      this.requestTime,
      this.method,
      this.status,
      this.responseTime,
      this.requestHeader,
      this.requestBody,
      this.responseBody,
      this.error,
      this.errorTime,
      this.timeLine});

  factory NetLogEntity.fromJson(Map<String, dynamic> json) {
    return NetLogEntity(
        url: json['url'] as String,
        requestTime: json['requestTime'] == null
            ? null
            : DateTime.parse(json['requestTime'] as String),
        method: json['method'] as String,
        status: json['status'] as int,
        responseTime: json['responseTime'] == null
            ? null
            : DateTime.parse(json['responseTime'] as String),
        requestHeader: json['requestHeader'] as String,
        requestBody: json['requestBody'] as String,
        responseBody: json['responseBody'] as String,
        error: json['error'] as String,
        errorTime: json['errorTime'] == null
            ? null
            : DateTime.parse(
                json['errorTime'] as String,
              ),
        timeLine: json['timeLine'] as String);
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'url': this.url,
      'requestTime': this.requestTime?.toIso8601String(),
      'method': this.method,
      'status': this.status,
      'timeLine': this.timeLine,
      'requestHeader': this.requestHeader,
      'requestBody': this.requestBody,
      'responseTime': this.responseTime?.toIso8601String(),
      'responseBody': this.responseBody,
      'error': this.error,
      'errorTime': this.errorTime?.toIso8601String()
    };
  }

  NetLogEntity.empty();
}
