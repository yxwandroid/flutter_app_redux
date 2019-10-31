import 'package:flutter/material.dart';
import 'package:flutter_app_redux/count_state.dart';
import 'package:flutter_app_redux/top_screen.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';


void main() {


  final store = Store<CountState>(reducer, initialState: CountState.initState());
  runApp(new MyApp(store));
}

class MyApp extends StatelessWidget {
  final Store<CountState> store;

  MyApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<CountState>(
      store: store,
      child: new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TopScreen(),
      ),
    );
  }
}
