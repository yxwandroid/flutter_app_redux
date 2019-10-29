// Action


import 'package:flutter/material.dart';
import 'package:flutter_app_redux/redux/state/AVListState.dart';

import 'package:redux/redux.dart';


class AVList {
  final String name;
  final IconData icon;

  AVList(this.name, this.icon);

  AVList.fromJSON(Map<String, dynamic> json)
      :name = json['name'],
        icon = json['icon'];
}

List<AVList> addItem(List<AVList> avLists, action){
  avLists.add(action.avLists[0]);
  return avLists;
}

List<AVList> removeItem(List<AVList> avLists, action){
  avLists.removeLast();
  return avLists;
}



final ListReducer = combineReducers<List<AVList>>([
  TypedReducer<List<AVList>, AddAVListAction>(addItem),
  TypedReducer<List<AVList>, RemoveAVListAction>(removeItem)
]);

class AddAVListAction {
  final List<AVList> avLists;
  AddAVListAction(this.avLists);
}

class RemoveAVListAction {}

AVListState reducer(AVListState state, action) {
  return state;
}