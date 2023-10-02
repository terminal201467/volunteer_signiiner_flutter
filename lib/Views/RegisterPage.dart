import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('註冊頁面'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              height: 100,
              child: const Center(
                child: Text('惠來社區通註冊',style: TextStyle(fontSize: 25)
              ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 300,
              height: 100,
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                Expanded(
                  flex: 1,
                  child: Text('帳號:',style: TextStyle(fontSize: 20)),
                ),
                SizedBox(width: 0),
                Expanded(
                  flex: 2,
                  child: TextField(decoration: InputDecoration(
                    labelText: '輸入註冊帳號'
                    ),
                  ),
                )
              ],)
            ),
            const SizedBox(height: 20),
            Container(
              width: 300,
              height: 100,
              child: const Row(children: [
                Expanded(
                  flex: 1,
                  child: Text('密碼：',style: TextStyle(fontSize: 20))),
                  SizedBox(width: 0),
                Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: InputDecoration(
                    labelText: '輸入註冊密碼',
                  ),
                ),)
              ],)
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}