import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/home_page.dart';
import 'package:flutter_playground/pages/inbox_page.dart';
import 'package:flutter_playground/pages/login_page.dart';
import 'package:flutter_playground/pages/main_page.dart';
import 'package:flutter_playground/pages/profile_page.dart';
import 'package:flutter_playground/pages/register_page.dart';
import 'package:flutter_playground/pages/today_page.dart';
import 'package:flutter_playground/service/api.dart';
import 'pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.indigo,),
      // home: AuthGate(),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
        '/today':(context) => const TodayPage(),
        '/inbox':(context) => const InboxPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}

class AuthGate extends StatefulWidget {
  const AuthGate({super.key});

  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {
  late final Future<String?> _token;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _token = ApiService.getToken();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _token,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return Scaffold(
            body: CircularProgressIndicator(),
          );
        }

        return snapshot.data != null ? MainPage() : LoginPage();
      },
    );
  }
}