import 'package:flutter/material.dart';

//如果是管理者的話
  ///1. 登入看志工的打卡狀態
  ///2. 變成自己是一個據點，讓志工可以自己掃描QRCode
  ///3. 管理者自己的狀態頁面
  ///4. 輸出文件檔Button

class ManagerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        actions: [
          const SizedBox.shrink(),
          IconButton(
            icon: Image.asset('assets/qrcode.viewfinder.png'),
            onPressed: () {
              
            },
          )
        ],
      ),
      body: Container(

      ),
    );
  }
}