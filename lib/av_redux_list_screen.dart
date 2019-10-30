import 'package:flutter/material.dart';
import 'package:flutter_app_redux/redux/avlist_state.dart';
import 'package:flutter_app_redux/redux/main_state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
class AVReduxListScreen extends StatelessWidget {

  final Store<MainState> store;

  AVReduxListScreen({
    Key key,
    this.store
  }): super(key:key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('AVReduxList'),
        ),
        body: new Column(
          children: <Widget>[
//                new StoreConnector<MainState, List<AVList>>(
////                  converter: (store) => store.state.data,
//                  builder: (BuildContext context, data){
//                    return Text("ee");
//                  },
//                ),
           new StoreConnector<MainState,AVListState>(converter: (store){
             return   store.state.avListState;
           },builder: (BuildContext context,data){
             List<AVList> avList = data.data;

             return new Container(
               height: 500.0,
               child: ListView.builder(
                 itemCount: avList.length,
                 itemBuilder: (BuildContext context, int position){
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

           },),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  color: Colors.blue,
                  child: new Text(
                    '更新',
                    style: new TextStyle(
                        color: Colors.white
                    ),
                  ),
                  onPressed: (){
                    List<AVList> avList= new List();
                    avList.add(AVList("wilson",Icons.android));
                    store.dispatch(AddAVListAction(new AVListState(avList)));
                  },
                ),
                new RaisedButton(
                  color: Colors.blue,
                  child: new Text(
                    '删除最后一项',
                    style: new TextStyle(
                        color: Colors.white
                    ),
                  ),
                  onPressed: (){
                    store.dispatch(
                        new RemoveAVListAction()
                    );
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