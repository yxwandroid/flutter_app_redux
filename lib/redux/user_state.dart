import 'package:flutter_app_redux/model/userinfo.dart';
import 'package:redux/redux.dart';
//State
class UserState {
  UserInfo userInfo;

  UserState(this.userInfo);

  static initStore() {
    return UserState(null);
  }
}


//reducer
final UserReducer = combineReducers<UserState>([
  TypedReducer<UserState, InitUserStateAction>(_init),
  TypedReducer<UserState, UpdateUserAction>(_updateUserLoad),
]);


UserState _init(UserState userState, InitUserStateAction action) {
  return UserState.initStore();
}


UserState _updateUserLoad(UserState userState, action) {

  userState.userInfo = action.userInfo;
  return userState;
}


//action
class UpdateUserAction {
  final UserInfo userInfo;
  UpdateUserAction(this.userInfo);
}

class InitUserStateAction {
  InitUserStateAction();
}
