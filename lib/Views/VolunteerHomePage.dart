import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:volunteer_signiiner_flutter/ViewModel/UserManager.dart';
import 'package:volunteer_signiiner_flutter/ViewModel/VolunteerHomePageViewModel.dart';

///如果是志工的話
  ///1. 可以點選要打開相機的Button，打開QRCode掃描頁面
  ///2. 志工使用的狀態頁面(已經登入)
  ///3. 達成服務目標
class VolunteerHomePage extends StatefulWidget {

  @override
  VolunteerHomePageState createState() => VolunteerHomePageState();
  }


class VolunteerHomePageState extends State<VolunteerHomePage> {

VolunteerHomePageViewModel viewModel = VolunteerHomePageViewModel();

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Center(child: Text('志工首頁'))
    ),
    body: CustomScrollView(
    slivers: <Widget>[
      SliverToBoxAdapter(
        child: Column(
          children: [
            Image.asset('assets/images/appIcon.png',
                width: 100,
                height: 100
            ),
            const SizedBox(height: 10),
            Container(
              width: 150,
              height: 100,
              child: Column(
                children: [
                  Text('志工編號：${viewModel.userManager.currentUser.identity}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto'
                      ),
                    ),
                  const SizedBox(height: 10),
                  Text('Hello，${viewModel.userManager.currentUser.name}!',
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto'
                    ),
                  ),
                  const SizedBox(height: 10),
                  ClipRRect(child:
                    Container(
                      color: Colors.green,
                      child: Text(viewModel.userManager.currentLoginState == LoginState.loggedIn ? '已登入志工服務' : '目前尚未登入服務',
                         style: const TextStyle(
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
      //本週簽到
      SliverToBoxAdapter(
        child: Column(
          children: [
            const Center(child: Text('本週簽到')),
            setWeekListView(context,viewModel.userManager.serveDates),
          ],
        ),
      ),
      //本月簽到
      SliverToBoxAdapter(
        child: Column(
          children: [
            const Center(child: Text('本月簽到')),
            // setWeekListView(context, serveDates)
          ],
        ),
      ),
    ],
  )
  );
  }
}

//WeekListView
Widget setWeekListView(BuildContext context, List<int> serveDate) {
  final List<String> weekDays = ["一", "二", "三", "四", "五", "六", "日"];
  return ListView.builder(
          itemCount: weekDays.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext, int index) {
            return ListCell(context, weekDays[index], serveDate[index]);
        });
}

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

//月份Widget