import 'package:flutter/material.dart';
import 'package:volunteer_signiiner_flutter/Views/LoginPage.dart';
import 'package:volunteer_signiiner_flutter/Views/ManagerHomePage.dart';
import 'package:volunteer_signiiner_flutter/Views/RegisterPage.dart';
import 'package:volunteer_signiiner_flutter/Views/VolunteerHomePage.dart';
import 'Views/DivideMassesPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'firebase_options.dart';

void main() {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ); 
    runApp(const MainApp());
  } catch (e) {
    debugPrint('Firebase 初始化失敗：$e');
  }
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const DivideMassesPage(),
      //這邊需要區分三種狀態：
      ///1. 登入中
      ///2. 未登入
    );
  }
}