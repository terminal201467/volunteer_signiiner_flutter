import 'package:volunteer_signiiner_flutter/Model/User.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:bloc/bloc.dart';


enum UserManagerEvent { login, logout }

enum UserManagerState { loggedIn, loggedOut }

typedef ErrorCallback = void Function(String errorMessage);

class UserManagerBloc extends Bloc<UserManagerEvent, UserManagerState> {
    UserManagerBloc() : super(UserManagerState.loggedOut);

  @override
  Stream<UserManagerState> mapEventToState(UserManagerEvent event) async* {
    switch (event) {
      case UserManagerEvent.login:
        // 在這裡處理登錄邏輯，例如驗證等操作
        yield UserManagerState.loggedIn;
        break;
      case UserManagerEvent.logout:
        // 在這裡處理登出邏輯
        yield UserManagerState.loggedOut;
        break;
    }
  }

  //一般登入
  void login() async {

  }
  
  //登出
  void logout() async {

  }
  //google登入

  void googleLogin() async {

  }

  //Facebook登入
  void facebookLogin() async {

  }

}