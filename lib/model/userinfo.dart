

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



  UserInfo.empty();


  UserInfo copyWith({
    String id,
    String name,
    String phoneNumber,
    int wxOpenId,
    bool hasPassword,
    String grade,
    String major,
    String advancedMathType,
    String gender,
    String avatarUrl,
    bool isTeacher,
    String teacherTitle,
    String teacherIntroduction,
    String createdTime,
    String token
  }) {
    return UserInfo(
      id ?? this.id,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      wxOpenId: wxOpenId ?? this.wxOpenId,
      hasPassword: hasPassword ?? this.hasPassword,
      grade: grade ?? this.grade,
      major: major ?? this.major,
      advancedMathType: advancedMathType ?? this.advancedMathType,
      gender: gender ?? this.gender,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      isTeacher: isTeacher ?? this.isTeacher,
      teacherTitle: teacherTitle ?? this.teacherTitle,
      teacherIntroduction: teacherIntroduction ?? this.teacherIntroduction,
      createdTime: createdTime ?? this.createdTime,
      token: token ?? this.token,
    );
  }

  String get gradeMajorUI => '${grade != null ? gradeMap[grade] : '未设置'}-${major != null ? majorMap[major] : '未设置'}';


  static const Map<String, String> genderMap = {
    '1' : '男生',
    '2' : '女生',
  };

  static const Map<String, String> gradeMap = {
    '1' : '大学一年级',
    '2' : '大学二年级',
    '3' : '大学三年级',
  };

  static const Map<String, String> majorMap = {
    '1' : '理学',
    '2' : '工学',
    '3' : '经济学',
    '4' : '农学类',
    '5' : '医学类',
    '6' : '管理学类',
    '7' : '教育学类',
    '8' : '哲学类',
    '9' : '法学类',
    '10' : '艺术学类',
    '11' : '文学类',
    '12' : '历史类',
  };

  static const Map<String, String> advancedMathTypeMap = {
    '1' : '高等数学I',
    '2' : '高等数学II',
    '3' : '高等数学III',
  };
}
