import 'package:flutter/material.dart';
import 'package:flutter_app_redux/common/model/entity_factory.dart';

///1 创建model
class AVList extends BaseEntity {
  final String name;
  final IconData icon;

  AVList(this.name, this.icon);

  AVList.fromJSON(Map<String, dynamic> json)
      : name = json['name'],
        icon = json['icon'];
}