import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class UserAuth {

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
            } catch (e) {
            print('Registration failed: $e');
        }
  }

    //一般登入
    Future<User?> loginWithEmailPassword(String email, String password) async {
        try {
        UserCredential userCredential = await _fireBaseAuth.signInWithEmailAndPassword(
            email: email,
            password: password,
        );
          } catch (e) {
            print('Login failed: $e');
        return null;
        }
    }

    //Google登入
    Future<void> handleGoogleSignIn() async {
        try {
            final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
            if (googleSignInAccount != null) {
                print('Google Sign-In successful: ${googleSignInAccount.displayName}');
            } else {
                print('Google Sign-In cancelled');
            }
        } catch (error) {
        print('Google Sign-In error: $error');
        }
    }

    //Facebook登入
      Future<void> loginWithFacebook() async {
        try {
            final LoginResult result = await _facebookAuth.login();
        if (result.status == LoginStatus.success) {
            final AccessToken accessToken = result.accessToken!;
            print('Facebook Login successful. Access Token: ${accessToken.token}');
        } else {
            print('Facebook Login failed: ${result.message}'); 
        } 
        
        } catch (e) {
        print('Facebook Login error: $e');
    }
  }
}