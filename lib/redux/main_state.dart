import 'package:flutter/cupertino.dart';
import 'package:flutter_app_redux/redux/index.dart';
import 'package:flutter_redux/flutter_redux.dart';

class MainState {
  UserState userState;
  AVListState avListState;

  MainState({this.userState, this.avListState});

  static clearStore(BuildContext context) {
    StoreProvider.of<MainState>(context).dispatch(InitUserStateAction());
    StoreProvider.of<MainState>(context).dispatch(InitAVListAction());
  }
}

MainState appReducer(MainState store, dynamic action) {
  return MainState(
    userState: UserReducer(store.userState, action),
    avListState: listReducer(store.avListState, action),
  );
}
