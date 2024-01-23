import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/mockito.dart';
import 'package:volunteer_signiiner_flutter/Firebase/UserAuth.dart';// 请替换为你的实际文件路径

class MockFirebaseAuth extends Mock implements FirebaseAuth {}
class MockGoogleSignIn extends Mock implements GoogleSignIn {}
class MockFacebookAuth extends Mock implements FacebookAuth {}
class MockUserCredential extends Mock implements UserCredential {}
class MockGoogleSignInAccount extends Mock implements GoogleSignInAccount {}
class MockLoginResult extends Mock implements LoginResult {}

void main() {
  group('UserAuth Tests', () {
    late MockFirebaseAuth mockFirebaseAuth;
    late MockGoogleSignIn mockGoogleSignIn;
    late MockFacebookAuth mockFacebookAuth;
    late UserAuth userAuth;

    setUp(() {
      mockFirebaseAuth = MockFirebaseAuth();
      mockGoogleSignIn = MockGoogleSignIn();
      mockFacebookAuth = MockFacebookAuth();
      userAuth = UserAuth();
    });

    //  測試 一般註冊
    test('Registration successful', () async {
      when(mockFirebaseAuth.createUserWithEmailAndPassword(
        email: '',
        password: '',
      )).thenAnswer((_) async => MockUserCredential());
      var userWasCreated = false;
      await userAuth.register('terminal201467@gmail.com', 'terminal2014');
      expect(userWasCreated, isTrue);
    });

    // 測試 一般登入
    test('Login with email and password successful', () async {
      when(mockFirebaseAuth.signInWithEmailAndPassword(
        email: '',
        password: '',
      )).thenAnswer((_) async => MockUserCredential());
      final user = await userAuth.loginWithEmailPassword('test@example.com', 'password123');
      expect(user, isNotNull);
    });

    // 測試Google登入
    test('Google Sign-In successful', () async {
      when(mockGoogleSignIn.signIn()).thenAnswer((_) async => MockGoogleSignInAccount());
      await userAuth.handleGoogleSignIn();
      verify(mockGoogleSignIn.signIn()).called(1);
      // Add your assertions here to verify the Google Sign-In behavior
    });
    
    // 測試Facebook登入
    test('Facebook Login successful', () async {
      when(mockFacebookAuth.login()).thenAnswer((_) async => MockLoginResult());
      await userAuth.loginWithFacebook();
      verify(mockFacebookAuth.login()).called(1);
    });
  });
}
