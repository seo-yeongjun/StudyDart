import 'package:flutter/material.dart';
import 'package:student_id_card/Login/LoginController.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key});

  void _login(BuildContext context) {
    if (_idController.text == 'test' && _passwordController.text == 'test') {
      final LoginController loginController = LoginController();
      loginController.setLoggedIn(true);
      Navigator.pushReplacementNamed(context, '/main');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('로그인에 실패했습니다.'),
        ),
      );
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _idController,
              decoration: const InputDecoration(
                labelText: '학번',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: '비밀번호',
                border: OutlineInputBorder(),
              ),
              obscureText: true, // 비밀번호 입력 필드
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () => _login(context),
              child: const Text('로그인'),
            ),
          ],
        ),
      ),
    );
  }
}
