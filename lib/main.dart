import 'package:flutter/material.dart';
import 'package:flutter_basic/screens/cart_screen.dart';
import 'package:flutter_basic/screens/home_screen.dart';
import 'package:flutter_basic/screens/login_screen.dart';
import 'package:flutter_basic/utils/routes.dart';
import 'package:flutter_basic/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginScreen(),
        MyRoutes.homeRoute: (context) => const HomeScreen(),
        MyRoutes.loginRoute: (context) => const LoginScreen(),
        MyRoutes.cartRoute: (context) => CartScreen(),
      },
    );
  }
}
