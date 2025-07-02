import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/theme/app_theme.dart';
import 'package:my_ecommerce_app/common/widgets/custom_navigationbar.dart';
import 'package:my_ecommerce_app/features/auth/presentation/pages/login_page.dart';
import 'package:my_ecommerce_app/features/auth/presentation/pages/signup_page.dart';
import 'package:my_ecommerce_app/features/cart/presentation/pages/cart_page.dart';
import 'package:my_ecommerce_app/features/home/presentation/pages/home_page.dart';
import 'package:my_ecommerce_app/features/home/presentation/providers/home_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => HomeProvider())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      // home: LoginPage(),
      initialRoute: '/login_page',
      routes: {
        '/login_page': (context) => LoginPage(),
        '/signup_page': (context) => SignupPage(),
        '/home_page': (context) => HomePage(),
        '/cart_page': (context) => CartPage(),
        '/main': (context) => CustomNavigationBar()
      },
    );
  }
}
