import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FirebaseAuth {

    //一般註冊
      Future<void> _register() async {
        try {
            UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
            email: _emailController.text,
            password: _passwordController.text,
        );
            print('Registration successful: ${userCredential.user!.email}');
            } catch (e) {
            print('Registration failed: $e');
        }
  }

    //一般登入
    Future<User?> signInWithEmailPassword(String email, String password) async {
        try {
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
            email: email,
            password: password,
        );
        return userCredential.user;
            } catch (e) {
            print('Login failed: $e');
        return null;
        }
    }

    //Google登入
    Future<void> _handleGoogleSignIn() async {
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
      Future<void> _loginWithFacebook(BuildContext context) async {
        try {
            final LoginResult result = await FacebookAuth.instance.login();
        if (result.status == LoginStatus.success) {
            final AccessToken accessToken = result.accessToken!;
            print('Facebook Login successful. Access Token: ${accessToken.token}');
        } else {
            print('Facebook Login failed: ${result.message}'); 
        } catch (e) {
        print('Facebook Login error: $e');
    }
  }

}