import 'package:firebase_auth/firebase_auth.dart';
import 'package:volunteer_signiiner_flutter/Model/UserModel.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class UserAuth {

  UserModel? _currentUser;

  UserModel? get currentUser => _currentUser;

  static final UserAuth _instance = UserAuth._internal();

  factory UserAuth() {
    return _instance;
  }

  UserAuth._internal(); 

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  final FirebaseAuth _fireBaseAuth = FirebaseAuth.instance;

  final FacebookAuth _facebookAuth = FacebookAuth.instance;
    //一般註冊
      Future<void> register(String email, String password) async {
        try {
            UserCredential userCredential = await _fireBaseAuth.createUserWithEmailAndPassword(
            email: email,
            password: password,
        );
          print('Registration successful: ${userCredential.user!.email}');
          if (userCredential.user != null) {
            _currentUser?.name = userCredential.user!.displayName!;
            _currentUser?.phoneNumber = userCredential.user!.phoneNumber!;
            _currentUser?.email = userCredential.user!.email!;
            _currentUser?.uid = userCredential.user!.uid;
          }  
          } catch (e) {
          print('Registration failed: $e');
          _currentUser = null;
        }
    }

    //一般登入
    Future<void> loginWithEmailPassword(String email, String password) async {
        try {
        UserCredential userCredential = await _fireBaseAuth.signInWithEmailAndPassword(
            email: email,
            password: password,
        );
          if (userCredential.user != null) {
            _currentUser?.name = userCredential.user!.displayName!;
            _currentUser?.phoneNumber = userCredential.user!.phoneNumber!;
            _currentUser?.email = userCredential.user!.email!;
            _currentUser?.uid = userCredential.user!.uid;
          }  
          } catch (e) {
            print('Login failed: $e');
          _currentUser = null;
        }
    }

    //Google登入
    Future<void> handleGoogleSignIn() async {
        try {
            final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
            if (googleSignInAccount != null) {
                print('Google Sign-In successful: ${googleSignInAccount.displayName}');
              _currentUser?.name = googleSignInAccount.displayName!;
              _currentUser?.email = googleSignInAccount.email;
              _currentUser?.uid = googleSignInAccount.id;
            } else {
                print('Google Sign-In cancelled');
                currentUserName = null;
            }
          } catch (error) {
        print('Google Sign-In error: $error');
        }
    }

    //Facebook登入
    Future<void> loginWithFacebook() async {
      try {
        final LoginResult result = await FacebookAuth.instance.login();
        if (result.status == LoginStatus.success) {
          final AccessToken accessToken = result.accessToken!;

          // 获取用户的基本资料
          final userProfile = await FacebookAuth.instance.getUserData();

          // 输出用户资料
          print('Facebook Login successful. Access Token: ${accessToken.token}');
          print('User Profile: $userProfile');
          _currentUser?.name = userProfile['name'];
          _currentUser?.email = userProfile['email'];
          _currentUser?.uid = userProfile['id'];
        } else {
          print('Facebook Login failed: ${result.message}');
        }
      } catch (e) {
        print('Facebook Login error: $e');
      }
    }
}