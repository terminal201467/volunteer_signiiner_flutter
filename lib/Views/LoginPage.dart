import 'package:flutter/material.dart';

class LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override LoginPageState createState() => LoginPageState();

  @override 
  Widget(BuildContext context) {
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
          children: [
            Container(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '輸入帳號',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '輸入密碼'
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              child: ElevatedButton(
                child: Text('登入'),
                  onPressed: () {
                    
                  },
              ),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
