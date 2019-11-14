class UserinfoModel {
  String msg;
  int status;
  DataBean data;

  UserinfoModel({this.msg, this.status, this.data});

  UserinfoModel.fromJson(Map<String, dynamic> json) {    
    this.msg = json['msg'];
    this.status = json['status'];
    this.data = json['data'] != null ? DataBean.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }

}

class DataBean {
  String username;
  String password;
  String email;
  String phone;
  String question;
  String answer;
  String nickname;
  String uuid;
  String extra1;
  String extra2;
  String extra3;
  String headimg;
  String createTime;
  String updateTime;
  int id;
  int role;

  DataBean({this.username, this.password, this.email, this.phone, this.question, this.answer, this.nickname, this.uuid, this.extra1, this.extra2, this.extra3, this.headimg, this.createTime, this.updateTime, this.id, this.role});

  DataBean.fromJson(Map<String, dynamic> json) {    
    this.username = json['username'];
    this.password = json['password'];
    this.email = json['email'];
    this.phone = json['phone'];
    this.question = json['question'];
    this.answer = json['answer'];
    this.nickname = json['nickname'];
    this.uuid = json['uuid'];
    this.extra1 = json['extra1'];
    this.extra2 = json['extra2'];
    this.extra3 = json['extra3'];
    this.headimg = json['headimg'];
    this.createTime = json['createTime'];
    this.updateTime = json['updateTime'];
    this.id = json['id'];
    this.role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['question'] = this.question;
    data['answer'] = this.answer;
    data['nickname'] = this.nickname;
    data['uuid'] = this.uuid;
    data['extra1'] = this.extra1;
    data['extra2'] = this.extra2;
    data['extra3'] = this.extra3;
    data['headimg'] = this.headimg;
    data['createTime'] = this.createTime;
    data['updateTime'] = this.updateTime;
    data['id'] = this.id;
    data['role'] = this.role;
    return data;
  }
}
