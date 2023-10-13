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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                    ),
                  ),
                  onPressed: () {
                    
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/google.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.fill,),
                      const Text('google登入',
                            style: TextStyle(
                            color: Colors.black
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                    child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                    ),
                  ),
                  onPressed: () {
                    
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/facebook.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.fill,),
                      const Text('Facebook登入',
                            style: TextStyle(
                              color: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),
                  ), 
                )
              ],
            )),
            const SizedBox(height: 20,),
            Container(
              child: TextButton(
                child: Text('還未註冊嗎？',
                style: TextStyle(fontSize: 18,
                color: Colors.blue,
                fontFamily: 'Roboto'),
                ),
                onPressed: () {
                  //推到註冊頁面的Route
                },
              ),
            )
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
