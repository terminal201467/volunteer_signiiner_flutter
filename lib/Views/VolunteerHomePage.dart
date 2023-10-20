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
      return CustomScrollView(
        slivers: <Widget>[
            SliverAppBar(
              pinned: true, // 表頭固定在頂部
              expandedHeight: 200.0, // 表頭的高度
              flexibleSpace: FlexibleSpaceBar(
              title: Text('表頭標題'),
              background: Image.network('https://example.com/header_image.jpg', fit: BoxFit.cover),
              ),
            ),
            SilverToBoxAdapter(
              child: Container(
                child: Column(
                  children: [
                    Image.asset('assets/images/appIcon.png'),
                    Text('志工編號'),
                    Text('Hello，穆辴！'),
                    Container(
                      child: Text('已登入志工服務中')
                    ),
                  ],
                ),
              ),
            )
        ],
      );
  }
}



//Contents

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