

//1. 這邊要處理服務登入的狀態
//2. 輸出現在是登入還是登出狀態
//3. 檢查登入登出狀態

import 'package:bloc/bloc.dart';
import 'package:volunteer_signiiner_flutter/Firebase/SignInDatabase.dart';

enum ServiceSignInState { isSignIn, isNotSignIn }

enum ServiceSignInEvent { signIn, signOut }

class ServiceSignInManagerBloc extends Bloc<ServiceSignInEvent, ServiceSignInState> {

  SignInDataBase signInDataBase = SignInDataBase();

ServiceSignInManagerBloc() : super(ServiceSignInState.isNotSignIn);

  @override
  Stream<ServiceSignInState> mapEventToState(ServiceSignInEvent event) async* {

  }

  Future<void> signIn() async {

  }

  Future<void> signOut() async {

  }

  Future<void> updateSignInInfo() async {

  }

  Future<void> checkSignInState() async {

  }

}