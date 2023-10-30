import 'package:flutter/material.dart';
import 'package:volunteer_signiiner_flutter/Model/User.dart';

enum LoginState {
  loggedIn, 
  notLoggedIn, 
}

class UserManager {

static final UserManager shared = UserManager();

late LoginState loginState = LoginState.notLoggedIn;
  //現在使用者
late User currentUser;
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

// 創建使用者資料
void createUserData() {

  }

// 讀取使用者資料
void getUserData() {

  }

// 更改使用者資料
void changeUserDate() {

  }

// 刪除使用者資料
void destroyUserData() {

  }

}