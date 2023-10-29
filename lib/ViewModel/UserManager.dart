import 'package:volunteer_signiiner_flutter/Model/User.dart';

enum LoginState {
  loggedIn, 
  notLoggedIn, 
}

class UserManager {

late LoginState loginState = LoginState.notLoggedIn;
  //現在使用者
late User currentUser;
//服務天數(週)
List<int> serveDates = [];
//服務天數（月）
List<int> serveMonthDates = [];

LoginState currentLoginState = LoginState.notLoggedIn;

void getState() {

}


}