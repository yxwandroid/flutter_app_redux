import 'package:flutter/material.dart';
import 'package:flutter_app_redux/common/model/av_list.dart';
import 'package:flutter_app_redux/common/redux/avlist_state.dart';
import 'package:flutter_app_redux/common/redux/main_state.dart';
import 'package:flutter_app_redux/common/store/store_manager.dart';
import 'package:flutter_redux/flutter_redux.dart';

class AVReduxListPage extends StatelessWidget {
  static final String sName  =  "AVReduxListPage";
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('AVReduxList'),
        ),
        body: new Column(
          children: <Widget>[
            //监听方式1
//            new StoreConnector<MainState, AVListState>(
//              converter: (store) {
//                return store.state.avListState;
//              },
//              builder: (BuildContext context, data) {
//                List<AVList> avList = data.data;
//
//                return new Container(
//                  height: 500.0,
//                  child: ListView.builder(
//                    itemCount: avList.length,
//                    itemBuilder: (BuildContext context, int position) {
//                      return new Padding(
//                        padding: EdgeInsets.all(10.0),
//                        child: new Row(
//                          children: <Widget>[
//                            new Text(avList[position].name),
//                            new Icon(avList[position].icon, color: Colors.blue)
//                          ],
//                        ),
//                      );
//                    },
//                  ),
//                );
//              },
//            ),

          //监听方式2
            new StoreBuilder<MainState>(builder: (context, store) {
              List<AVList> avList = store.state.avListState.data;
              return new Container(
                height: 500.0,
                child: ListView.builder(
                  itemCount: avList.length,
                  itemBuilder: (BuildContext context, int position) {
                    return new Padding(
                      padding: EdgeInsets.all(10.0),
                      child: new Row(
                        children: <Widget>[
                          new Text(avList[position].name),
                          new Icon(avList[position].icon, color: Colors.blue)
                        ],
                      ),
                    );
                  },
                ),
              );
            }),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  color: Colors.blue,
                  child: new Text(
                    '更新',
                    style: new TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    StoreManager.store.dispatch(
                        AddAVListAction(AVList("wilson", Icons.android)));
                  },
                ),
                new RaisedButton(
                  color: Colors.blue,
                  child: new Text(
                    '删除最后一项',
                    style: new TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    StoreManager.store.dispatch(new RemoveAVListAction());
                  },
                ),
                new RaisedButton(
                  color: Colors.blue,
                  child: new Text(
                    '重置全部状态',
                    style: new TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    MainState.clearStore();
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
