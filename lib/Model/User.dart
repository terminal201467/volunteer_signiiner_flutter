

class User {

  String gender = "未知的性別";
  String identity = "未知的ID";
  String name = "匿名";
  String phoneNumber = "未知的電話號碼";
  String signUpTimeStamp = "未知的時間戳記";
  String uid = "未知的UID";

    User({
    required this.gender,
    required this.identity,
    required this.name,
    required this.phoneNumber,
    required this.signUpTimeStamp,
    required this.uid
  });

}

class SignInData {

  String email = "未知Email";
  String identity = "未知的UID";
  String serviceID = "未知的服務ID";
  String timeStamp = "未知的時間戳記";
  String uid = "未知的UID";
  String userName = "未知的使用者名稱";

  SignInData({
    required this.email,
    required this.identity,
    required this.serviceID,
    required this.timeStamp,
    required this.uid,
    required this.userName
  });
}