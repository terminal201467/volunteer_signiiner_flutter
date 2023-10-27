import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

///如果是志工的話
  ///1. 可以點選要打開相機的Button，打開QRCode掃描頁面
  ///2. 志工使用的狀態頁面(已經登入)
  ///3. 達成服務目標
class VolunteerHomePage extends StatefulWidget {

  @override
  VolunteerHomePageState createState() => VolunteerHomePageState();
  }


class VolunteerHomePageState extends State<VolunteerHomePage> {
  
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Center(child: Text('志工首頁'))
    ),
    body: CustomScrollView(
    slivers: <Widget>[
      SliverToBoxAdapter(
        child: Container(
          child: Column(
            children: [
              Image.asset('assets/images/appIcon.png',
                  width: 100,
                  height: 100
              ),
              SizedBox(height: 10),
              Container(
                width: 150,
                height: 100,
                child: Column(
                  children: [
                    Text('志工編號：1234567',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto'
                        ),
                      ),
                    const SizedBox(height: 10),
                    Text('Hello，穆辴！',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto'
                      ),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(child:
                      Container(
                        color: Colors.green,
                        child: Text('已登入志工服務中',
                           style: TextStyle(
                               color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Roboto'
                          )
                        ,)
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Column(
          children: [
            Center(child: Text('本週簽到')),
            setWeekListView(context, serveDate)

          ],
        ),
      ),
    ],
  )
  );
  }
}



//Contents

//WeekListView
// Widget setWeekListView(BuildContext context, List<int> serveDate) {
//   final List<String> weekDays = ["一", "二", "三", "四", "五", "六", "日"];
//   return ListView.builder(
//           itemBuilder: weekDays.length,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) {
//             return ListCell(context, , date)
//           })
//   );
// }

Widget ListCell(BuildContext context, String weekDateText, int date) {
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