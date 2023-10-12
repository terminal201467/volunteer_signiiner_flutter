import 'package:flutter/material.dart';

class LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        leading:IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('登入頁面'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 300,
              height: 100,
              child: const Text('使用者登入',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              width: 300,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
                  hintText: '輸入帳號',
                ),
              ),
            ),
            // const SizedBox(height: 5),
            Container(
              width: 300,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  hintText: '輸入密碼'
                ),
              ),
            ),
            // const SizedBox(height: 5),
            Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0), // 在这里设置圆角半径
                  ),
                ),
                onPressed: () {
                  // 按钮被点击时的操作
                },
                child: const Text('登入',
                      textAlign: TextAlign.center, // 文本水平居中对齐
                      style: TextStyle(fontSize: 20),),
              )
            ),
            const SizedBox(height: 20),
            Container(
              width: 300,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                    ),
                  ),
                  onPressed: () {
                    
                  },
                  child: Image.asset('assets/images/google.png'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                    ),
                  ),
                  onPressed: () {
                    
                  },
                  child: Image.asset('assets/images/facebook.png'),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override LoginPageState createState() => LoginPageState();

}
