import 'package:volunteer_signiiner_flutter/Firebase/UserAuth.dart';
import 'package:volunteer_signiiner_flutter/Model/UserModel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:bloc/bloc.dart';


enum UserManagerEvent { normalLogin, googleLogin, facebookLogin, logout, register }

enum UserManagerState { loggedIn, loggedOut, registerSuccessed, registerFailed }

typedef ErrorCallback = void Function(String errorMessage);

class UserManagerBloc extends Bloc<UserManagerEvent, UserManagerState> {
  
    UserManagerBloc() : super(UserManagerState.loggedOut);

  UserAuth auth = UserAuth();

  String email = ""; 

  String password = "";

  @override
  Stream<UserManagerState> mapEventToState(UserManagerEvent event) async* {
    switch (event) {
      case UserManagerEvent.normalLogin:
        login(email, password);
        yield UserManagerState.loggedIn;
        break;
      case UserManagerEvent.googleLogin:
        googleLogin();
        yield UserManagerState.loggedIn;
        break;
      case UserManagerEvent.facebookLogin:
        facebookLogin();
        yield UserManagerState.loggedIn;
        break;
      case UserManagerEvent.logout:
        logout();
        yield UserManagerState.loggedOut;
        break;
      case UserManagerEvent.register:
        register(email, password);
        break;
    }
  }

  //一般登入
  void login(String email, String password) async {
    auth.loginWithEmailPassword(email, password);
  }

  //登出
  void logout() async {
    auth.logout();
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