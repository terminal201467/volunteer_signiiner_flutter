

class User {

  final String gender;
  final String identity;
  final String name;
  final String phoneNumber;
  final String signUpTimeStamp;
  final String uid;

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
  final String email;
  final String identity;
  final String serviceID;
  final String timeStamp;
  final String uid;
  final String userName;

  SignInData({
    required this.email,
    required this.identity,
    required this.serviceID,
    required this.timeStamp,
    required this.uid,
    required this.userName
  });
}