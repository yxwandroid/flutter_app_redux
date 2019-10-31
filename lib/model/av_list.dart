import 'package:flutter/material.dart';

///1 创建model
class AVList {
  final String name;
  final IconData icon;

  AVList(this.name, this.icon);

  AVList.fromJSON(Map<String, dynamic> json)
      : name = json['name'],
        icon = json['icon'];
}