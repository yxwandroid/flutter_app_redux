import 'package:flutter_app_redux/common/model/av_list.dart';
import 'package:redux/redux.dart';

///创建对应的状态操作类
class AVListState {
  List<AVList> data;

  AVListState(this.data);


  ///初始化的方法
  static initStore() {
    return AVListState(new List<AVList>());
  }
}



///将action,业务方法 和reducer 进行关联
final listReducer = combineReducers<AVListState>([
  TypedReducer<AVListState, AddAVListAction>(addItem),
  TypedReducer<AVListState, RemoveAVListAction>(removeItem),
  TypedReducer<AVListState, InitAVListAction>(initAVList),
]);



///创建对应action的业务代码
AVListState addItem(AVListState avLists, AddAVListAction action) {
  avLists.data.add(action.avList);
  return avLists;
}

AVListState removeItem(AVListState avLists, action) {
  avLists.data.removeLast();
  return avLists;
}

AVListState initAVList(AVListState avLists, action) {
  return AVListState.initStore();
}



///创建action
class AddAVListAction {
  final AVList avList;
  AddAVListAction(this.avList);
}

class RemoveAVListAction {}

class InitAVListAction {}
