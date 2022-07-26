import 'package:flutter/material.dart';
import 'package:flutter_basic/services/auth.dart';
import 'package:flutter_basic/utils/app_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: width,
              height: height * 0.3,
              decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/login.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
