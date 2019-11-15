import 'package:flutter_app_redux/common/model/userinfo_model.dart';
import 'package:redux/redux.dart';
//State
class UserState {
  UserInfoModel userInfo;

  UserState(this.userInfo);

  static initStore() {
    return UserState(null);
  }
}


//reducer
final userReducer = combineReducers<UserState>([
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
  final UserInfoModel userInfo;
  UpdateUserAction(this.userInfo);
}

class InitUserStateAction {
  InitUserStateAction();
}
