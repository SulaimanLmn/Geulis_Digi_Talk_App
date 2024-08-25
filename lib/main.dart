import 'package:flutter/material.dart';
import 'package:geulis_digitalk/pages/home_page.dart';
import 'package:geulis_digitalk/pages/login_page.dart';
import 'package:geulis_digitalk/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        '/loginpage': (context) => const LoginPage(),
        '/registerpage': (context) => const RegisterPage(),
        '/homepage': (context) => const HomePage(),
      },
    );
  }
}
