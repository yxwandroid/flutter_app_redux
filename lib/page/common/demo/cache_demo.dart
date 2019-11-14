import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_app_redux/widget/sm_titlebar_widget.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class CacheDemo extends StatefulWidget {
  static final String sName = "cahce_demo";

  @override
  _CacheDemoState createState() => _CacheDemoState();
}

class _CacheDemoState extends State<CacheDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SMTitleBarWidget(
        title: 'Cache Demo',
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('getSingleFile'),
            onTap: () async {
              File file = await DefaultCacheManager().getSingleFile('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568095130569&di=8824186ff5af330f91b2f45182738f42&imgtype=0&src=http%3A%2F%2Fpic33.nipic.com%2F20131007%2F13639685_123501617185_2.jpg');
            },
          ),
          ListTile(
            title: Text('getFilePath'),
            onTap: () async {
              String filePath = await DefaultCacheManager().getFilePath();
              List<FileSystemEntity> entityList = Directory(filePath).listSync();
              for (FileSystemEntity entity in entityList) {
                File file = entity as File;
                print(file.path + "size:" + file.lengthSync().toString());
              }
            },
          ),
        ],
      ),
    );
  }
}
