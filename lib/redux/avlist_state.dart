// Action

import 'package:flutter/material.dart';

import 'package:redux/redux.dart';

class AVList {
  final String name;
  final IconData icon;

  AVList(this.name, this.icon);

  AVList.fromJSON(Map<String, dynamic> json)
      : name = json['name'],
        icon = json['icon'];
}

class AVListState {
  List<AVList> data;

  AVListState(this.data);

  static initStore() {
    return AVListState(new List<AVList>());
  }
}

final listReducer = combineReducers<AVListState>([
  TypedReducer<AVListState, AddAVListAction>(addItem),
  TypedReducer<AVListState, RemoveAVListAction>(removeItem),
  TypedReducer<AVListState, InitAVListAction>(initAVList),
]);

AVListState addItem(AVListState avLists, AddAVListAction action) {
  avLists.data.add(action.avLists.data[0]);
  return avLists;
}

AVListState removeItem(AVListState avLists, action) {
  avLists.data.removeLast();
  return avLists;
}

AVListState initAVList(AVListState avLists, action) {
  return AVListState.initStore();
}

class AddAVListAction {
  final AVListState avLists;

  AddAVListAction(this.avLists);
}

class RemoveAVListAction {}

class InitAVListAction {}
