import 'dart:math';
import 'package:flutter/material.dart';
import 'package:volunteer_signiiner_flutter/Model/User.dart';
import 'package:firebase_core/firebase_core.dart';

enum LoginState {
  loggedIn, 
  notLoggedIn, 
}

typedef ErrorCallback = void Function(String errorMessage);

class UserManager {

static final UserManager shared = UserManager();

late LoginState loginState = LoginState.notLoggedIn;
  //現在使用者
User? currentUser;
//服務天數(週)
List<int> serveDates = [];
//服務天數（月）
List<int> serveMonthDates = [];

LoginState currentLoginState = LoginState.notLoggedIn;

void initState() {
  getUserData();
  if (currentLoginState == LoginState.notLoggedIn)
    currentUser = User(gender: '未知', identity: '未知', name: '匿名', phoneNumber: '00-0000-0000', signUpTimeStamp: '00-00-00', uid: '0000000000');
  else 
    currentUser = User(gender: '未知', identity: '未知', name: '匿名', phoneNumber: '00-0000-0000', signUpTimeStamp: '00-00-00', uid: '0000000000');
  }

void logOut() {
  if (currentLoginState == LoginState.loggedIn) {
    currentLoginState = LoginState.notLoggedIn;
    currentUser = null;
  }
}

// 創建使用者資料
void createUserData(
  String? gender,
  String? identity,
  String? name,
  String? phoneNumber,
  String? signUpTimeStamp,
  String? uid,
  ErrorCallback errorCallback,
) {
  if (gender == null) {
    errorCallback('沒有填入性別！');
    return;
  }

  if (identity == null) {
    errorCallback('沒有填入身份證字號！');
    return;
  }

  if (name == null || name.isEmpty) {
    errorCallback('名字是必填項目，請填入名字！');
    return;
  }

  if (phoneNumber == null || phoneNumber.isEmpty) {
    errorCallback('電話號碼是必填項目，請填入電話號碼！');
    return;
  }

  if (signUpTimeStamp == null) {
    errorCallback('沒有填入註冊時間戳記！');
    return;
  }

  if (uid == null || uid.isEmpty) {
    errorCallback('UID 是必填項目，請填入 UID！');
    return;
  }
}


// 讀取使用者資料
void getUserData(String id) {

}

// 更改使用者資料
void updateUserData(
  String? gender,
  String? identity,
  String? name,
  String? phoneNumber,
  String? signUpTimeStamp,
  String? uid,
  ErrorCallback errorCallback,
  ) {
  // 依次检查每个属性，如果传入了新的值，则执行相应的更改操作
  if (gender != null) {
    // 执行更改性別的操作
  }

  if (identity != null) {
    // 执行更改身份證字號的操作
  }

  if (name != null) {
    // 执行更改名字的操作
  }

  if (phoneNumber != null) {
    // 执行更改電話號碼的操作
  }

  if (signUpTimeStamp != null) {
    // 执行更改註冊時間戳記的操作
  }

  if (uid != null) {
    // 执行更改 UID 的操作
  }
}

// 刪除使用者資料
void destroyUserData(String id) {

}

}