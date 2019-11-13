class UserInfo {
  // 用户id
  String id;

  //用户名字
  String name;

  // 手机号
  String phoneNumber;

  // 微信id
  int wxOpenId;

  // 是否有密码
  bool hasPassword;

  // 年级
  String grade;

  // 专业
  String major;

  // 高等代数
  String advancedMathType;

  // 性别
  String gender;

  // 头像链接
  String avatarUrl;

  // 是否是教师
  bool isTeacher;

  // 教师头衔
  String teacherTitle;

  // 教师介绍
  String teacherIntroduction;

  // 创建时间
  String createdTime;

  // Token
  String token;

  UserInfo(this.id,
      {this.name,
      this.phoneNumber,
      this.wxOpenId,
      this.hasPassword,
      this.grade,
      this.major,
      this.advancedMathType,
      this.gender,
      this.avatarUrl,
      this.isTeacher,
      this.teacherTitle,
      this.teacherIntroduction,
      this.createdTime,
      this.token});

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(json['id'] as String,
        name: json['name'] as String,
        phoneNumber: json['phoneNumber'] as String,
        wxOpenId: json['wxOpenId'] as int,
        hasPassword: json['hasPassword'] as bool,
        grade: json['grade'] as String,
        major: json['major'] as String,
        advancedMathType: json['advancedMathType'] as String,
        gender: json['gender'] as String,
        avatarUrl: json['avatarUrl'] as String,
        isTeacher: json['isTeacher'] as bool,
        teacherTitle: json['teacherTitle'] as String,
        teacherIntroduction: json['teacherIntroduction'] as String,
        createdTime: json['createdTime'] as String,
        token: json['token'] as String);
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'phoneNumber': phoneNumber,
      'wxOpenId': wxOpenId,
      'hasPassword': hasPassword,
      'grade': grade,
      'major': major,
      'advancedMathType': advancedMathType,
      'gender': gender,
      'avatarUrl': avatarUrl,
      'isTeacher': isTeacher,
      'teacherTitle': teacherTitle,
      'teacherIntroduction': teacherIntroduction,
      'createdTime': createdTime,
      'token': token
    };
  }
}
