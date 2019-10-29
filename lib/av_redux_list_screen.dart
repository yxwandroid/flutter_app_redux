import 'package:flutter/material.dart';
import 'package:flutter_app_redux/redux/action/list_model.dart';
import 'package:flutter_app_redux/redux/state/AVListState.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
class AVReduxListScreen extends StatelessWidget {

  final Store<AVListState> store;

  AVReduxListScreen({
    Key key,
    this.store
  }): super(key:key);

  @override
  Widget build(BuildContext context) {
    return new StoreProvider<AVListState>(
        store: store,
        child: new MaterialApp(
          home: new Scaffold(
            appBar: new AppBar(
              title: new Text('AVReduxList'),
            ),
            body: new Column(
              children: <Widget>[
                new StoreConnector<AVListState, List<AVList>>(
                  converter: (store) => store.state.data,
                  builder: (BuildContext context, data){
                    return new Container(
                      height: 500.0,
                      child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int position){
                          return new Padding(
                            padding: EdgeInsets.all(10.0),
                            child: new Row(
                              children: <Widget>[
                                new Text(data[position].name),
                                new Icon(data[position].icon, color: Colors.blue)
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
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
                        store.dispatch(new AddAVListAction(
                            [new AVList("android", Icons.android)]
                        ));
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
        )
    );
  }
}