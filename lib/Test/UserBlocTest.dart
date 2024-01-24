import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:volunteer_signiiner_flutter/Firebase/UserAuth.dart';
import 'package:volunteer_signiiner_flutter/ViewModel/UserManagerBloc.dart';

void main() {
  group('UserManagerBloc Tests', () {
    late UserManagerBloc userManagerBloc;

    setUp(() {
      userManagerBloc = UserManagerBloc();
    });

    test('Initial state should be logged out', () {
      expect(userManagerBloc.state, UserManagerState.loggedOut);
    });

    test('Login event should change state to logged in', () {
      userManagerBloc.add(UserManagerEvent.normalLogin);
      expectLater(userManagerBloc.stream, emits(UserManagerState.loggedIn));
    });

    test('Logout event should change state to logged out', () {
      userManagerBloc.add(UserManagerEvent.logout);
      expectLater(userManagerBloc.stream, emits(UserManagerState.loggedOut));
    });

    test('Google login event should change state to logged in', () {
      userManagerBloc.add(UserManagerEvent.googleLogin);
      expectLater(userManagerBloc.stream, emits(UserManagerState.loggedIn));
    });

    // 你可以继续添加其他测试用例，测试不同事件下的状态变化

    tearDown(() {
      userManagerBloc.close();
    });
  });

  group('UserAuth Tests', () {
    Firebase.initializeApp();
    late UserAuth userAuth;

    setUp(() {
      userAuth = UserAuth();
    });

    // 编写 UserAuth 类的测试用例，测试登录、登出、注册等方法的行为

    tearDown(() {
      // 清理资源，例如关闭与 Firebase 的连接等
    });
  });
}
