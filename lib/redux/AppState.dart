
import 'package:flutter_app_redux/redux/action/list_model.dart';

class AppState {
  List<AVList> data;
  AppState(this.data);


  static initStore() {
    return AppState(null);
  }
}