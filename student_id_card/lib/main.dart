import 'dart:async';

import 'package:flutter/material.dart';

// 로그인 상태를 저장하고 불러오는 간단한 예제
import 'Login/LoginController.dart';
import 'Login/LoginScreen.dart';

// 메인 함수
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final LoginController loginController = LoginController();

  runApp(MyApp(loggedIn: await loginController.isLoggedIn()));
}

// 앱 위젯
class MyApp extends StatelessWidget {
  final bool loggedIn;

  const MyApp({super.key, required this.loggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student ID Card',
      debugShowCheckedModeBanner: false,
      initialRoute: loggedIn ? '/main' : '/login',
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => LoginScreen(),
        '/main': (BuildContext context) => const MainScreen(),
      },
    );
  }
}

// 메인 화면
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Student ID Card'),
        ),
        body: const Center(child: Text('학생증')),
        endDrawer: const MyEndDrawer(
          title: "학생증",
        ));
  }
}

// 드로어 위젯
class MyEndDrawer extends StatelessWidget {
  final String title;

  const MyEndDrawer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //gesture: GestureDragStartUpdateCallback,
      child: ListView(
        children: [
          SizedBox(
            height: 50,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(title),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('로그아웃'),
            onTap: () async {
              final LoginController loginController = LoginController();
              await loginController.setLoggedIn(false).then(
                    (dynamic value) =>
                        Navigator.pushReplacementNamed(context, '/login'),
                  );
            },
          ),
        ],
      ),
    );
  }
}
