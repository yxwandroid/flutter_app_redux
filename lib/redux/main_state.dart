import 'package:flutter/cupertino.dart';
import 'package:flutter_app_redux/redux/index.dart';
import 'package:flutter_app_redux/store/store_manager.dart';

class MainState {
  UserState userState;
  AVListState avListState;

  MainState({this.userState, this.avListState});

  ///store状态的重置
  static clearStore() {
    if (StoreManager.store != null) {
      StoreManager.store.dispatch(InitUserStateAction());
      StoreManager.store.dispatch(InitAVListAction());
    } else {
      print("store 管理者未进行初始化");
    }
  }
}

MainState appReducer(MainState store, dynamic action) {
  return MainState(
    userState: UserReducer(store.userState, action),
    avListState: listReducer(store.avListState, action),
  );
}
