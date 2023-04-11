import 'package:flutter/material.dart';
import 'SignUpViewModel.dart';

void main() {
  runApp(const MaterialApp(
    home: SignUpPage(),
  ));
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static SignUpViewModel viewModel = SignUpViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'VolunteerSigniiner',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                '志工管理系統',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  child: const Text(
                    '一般登入',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  icon: const Image(
                    image: AssetImage('assets/images/google.png'),
                    height: 24,
                  ),
                  label: const Text(
                    'Google登入',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  icon: const Image(
                    image: AssetImage('assets/images/facebook.png'),
                    height: 24,
                  ),
                  label: const Text(
                    'Facebook登入',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

