
import 'package:flutter_app_redux/redux/action/list_model.dart';

class AVListState {
  List<AVList> data;
  AVListState(this.data);


  static initStore() {
    return AVListState(null);
  }
}