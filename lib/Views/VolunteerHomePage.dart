import 'dart:ffi';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

///如果是志工的話
  ///1. 可以點選要打開相機的Button，打開QRCode掃描頁面
  ///2. 志工使用的狀態頁面(已經登入)
  ///3. 達成服務目標

class VolunteerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
        return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('志工首頁')),
        leading: IconButton(
            icon: Image.asset('assets/images/qrcode.png',
                width: 30,
                height: 30),
            onPressed: () {
              
            },
          ),
        actions: [
          IconButton(
            icon: Image.asset('assets/images/qrcode.viewfinder.png',
                width: 30,
                height: 30,),
            onPressed: () {
              
            },
          )
        ],
      ),
      body: Container(
        child: const Column(
          children: [
             Text('Hello，穆辴！'),
             Text('本週服務天數'),

          ],
        ),
      ),
    );
  }
}


//WeekListView

Widget setWeekListView(BuildContext context, List<int> serveDate) {
  final List<String> weekDays = ["一", "二", "三", "四", "五", "六", "日"];
  return ListView(
    scrollDirection: Axis.horizontal,
    children: const [

    ],
  );
}

Widget setListCell(BuildContext context, String weekDateText, int date) {
  final squareWidth = MediaQuery.of(context).size.width;
  final squareHeight = MediaQuery.of(context).size.height;

  return Container(
    child: Column(
      children: [
        Text('$weekDateText'),
        const SizedBox(),
        Container(
          width: squareWidth,
          height: squareHeight,
        ),
      ],
    ),
  );
}