import 'package:flutter/material.dart';

class DivideMassesPage extends StatelessWidget {
  const DivideMassesPage({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('分眾頁面'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo 图像
            Image.asset(
              'assets/images/appIcon.png', // 请替换为您的 Logo 图像路径
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20), // 增加一些垂直间距

            // 志愿者分组按钮
            Container(
              width: 200.0,
              height: 40.0,
              child: ElevatedButton(onPressed: () {
                  // 处理按钮点击事件
              },
              style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, // 绿色背景
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // 圆角
                    ),
                  ),
                child: const Text('志工登入'),
              ),
            ),
            const SizedBox(height: 10),// 增加一些垂直间距

            // 管理者分组按钮
            Container(
              width: 200.0,
              height: 40.0,
              child: ElevatedButton(onPressed: () {
                  // 处理按钮点击事件
              },
              style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, // 绿色背景
              shape: RoundedRectangleBorder(            
              borderRadius: BorderRadius.circular(20), // 圆角
                  ),
                ),
              child: const Text('志工登入'),
             ),
            ),
            const SizedBox(height: 10),// 增加一些垂直间距
          ],
        ),
      ),
    );
  }
}