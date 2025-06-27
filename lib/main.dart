import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/theme/app_theme.dart';
import 'package:my_ecommerce_app/features/auth/presentation/pages/login_page.dart';
import 'package:my_ecommerce_app/features/auth/presentation/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: LoginPage(),
      initialRoute: '/login_page',
      routes: {
        '/login_page': (context) => LoginPage(),
        '/signup_page': (context) => SignupPage()
      },
    );
  }
}
