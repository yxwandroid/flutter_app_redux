import 'package:flutter_app_redux/common/redux/main_state.dart';
import 'package:redux/redux.dart';

///全局的Store管理者
class StoreManager {
  // getStore
  static Store<MainState> _store;

  static Store<MainState> get store => _store;

  static setStore(Store<MainState> s) {
    _store = s;
  }
}
