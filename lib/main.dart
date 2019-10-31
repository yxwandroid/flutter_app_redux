import 'package:flutter/material.dart';
import 'package:flutter_app_redux/av_redux_list_screen.dart';
import 'package:flutter_app_redux/redux/index.dart';
import 'package:flutter_app_redux/redux/main_state.dart';
import 'package:flutter_app_redux/store/store_manager.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

//
//void main() {
//  final store = Store<CountState>(reducer, initialState: CountState.initState());
//  runApp(new MyApp(store));
//}
//
//class MyApp extends StatelessWidget {
//  final Store<CountState> store;
//
//  MyApp(this.store);
//
//  @override
//  Widget build(BuildContext context) {
//    return StoreProvider<CountState>(
//      store: store,
//      child: new MaterialApp(
//        title: 'Flutter Demo',
//        theme: new ThemeData(
//          primarySwatch: Colors.blue,
//        ),
//        home: TopScreen(),
//      ),
//    );
//  }
//}






void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final store = new Store<MainState>(appReducer,
      initialState: MainState(
          userState: UserState.initStore(),
          avListState: AVListState.initStore()));

  @override
  void initState() {
    super.initState();
    print("初始化应用的时候初始化store管理者");
    StoreManager.setStore(store);
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<MainState>(
      store: store,
      child: new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AVReduxListScreen(),
      ),
    );
  }
}
