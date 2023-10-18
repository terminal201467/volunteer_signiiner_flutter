import 'package:flutter/material.dart';
import 'package:volunteer_signiiner_flutter/Views/RegisterPage.dart';
import 'package:volunteer_signiiner_flutter/Views/VolunteerHomePage.dart';
import 'Views/DivideMassesPage.dart';

void main() {
  runApp(const MainApp());
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
      home: VolunteerHomePage(),
      //這邊需要區分三種狀態：
      ///1. 登入中
      ///2. 未登入
    );
  }
}