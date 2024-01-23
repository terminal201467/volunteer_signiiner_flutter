import 'package:volunteer_signiiner_flutter/Firebase/UserAuth.dart';
import 'package:volunteer_signiiner_flutter/Model/User.Modeldart';
import 'package:firebase_core/firebase_core.dart';
import 'package:bloc/bloc.dart';


enum UserManagerEvent { normalLogin, googleLogin, facebookLogin, logout, register }

enum UserManagerState { loggedIn, loggedOut, registerSuccessed, registerFailed }

typedef ErrorCallback = void Function(String errorMessage);

class UserManagerBloc extends Bloc<UserManagerEvent, UserManagerState> {
    UserManagerBloc() : super(UserManagerState.loggedOut);

  UserAuth auth = UserAuth();

  @override
  Stream<UserManagerState> mapEventToState(UserManagerEvent event) async* {
    switch (event) {
      case UserManagerEvent.normalLogin:
        // 在這裡處理登錄邏輯，例如驗證等操作
        //登入
        yield UserManagerState.loggedIn;
        break;
      case UserManagerEvent.googleLogin:
        yield UserManagerState.loggedIn;
        break;
      case UserManagerEvent.facebookLogin:
        yield UserManagerState.loggedIn;
        break;
      case UserManagerEvent.logout:
        yield UserManagerState.loggedOut;
        break;
      case UserManagerEvent.register:
        //註冊
        break;
    }
  }

  //一般登入
  void login(String email, String password) async {
    auth.loginWithEmailPassword(email, password);
  }

  //登出
  void logout() async {

  }

  //google登入
  void googleLogin() async {
    auth.handleGoogleSignIn();
  }

  //Facebook登入
  void facebookLogin() async {
    auth.loginWithFacebook();
  }

  //一般註冊
  void register(String email, String password) async {
    auth.register(email, password);
  }

}