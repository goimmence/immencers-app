import 'package:flutter/material.dart';
import 'package:flutter_basic/services/auth.dart';
import 'package:flutter_basic/utils/app_styles.dart';
import 'package:flutter_basic/widgets/text_box.dart';
import 'package:gap/gap.dart';

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
        backgroundColor: Colors.white,
        body: Column(
          children: [
            /* ------------------------------- Login image ------------------------------ */
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
            /* ------------------------------- Hello title ------------------------------ */
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login to your account",
                    style: Styles.heading5,
                  ),
                  Gap(20),
                  /* -------------------------------- Username -------------------------------- */
                  TextBox(
                    hintText: "Enter your username ",
                    isObscureText: false,
                    prefixIcon: Icon(
                      Icons.person,
                      color: Styles.primaryColor,
                    ),
                  ),
                  Gap(20),
                  /* ------------------------------- Password ------------------------------- */
                  TextBox(
                    hintText: "Enter your password",
                    isObscureText: true,
                    prefixIcon: Icon(
                      Icons.password,
                      color: Styles.primaryColor,
                    ),
                  ),
                  Gap(20),
                  /* ----------------------------- Forget password ---------------------------- */
                  Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "Forgot your password?",
                        style: Styles.body1.copyWith(
                          color: Styles.grayColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Gap(40),
            /* ----------------------------- Login in button ----------------------------- */
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Styles.primaryColor,
                minimumSize: Size(140.0, 40.0),
              ),
              child: Text("Sign In"),
              onPressed: () {},
            ),
            Gap(40),
            /* ------------------------------- Create account ------------------------------- */
            RichText(
              text: TextSpan(
                text: "Don't have an account?",
                style: Styles.body1.copyWith(color: Styles.grayColor),
                children: [
                  TextSpan(
                    text: " Create",
                    style: Styles.body1.copyWith(
                      color: Styles.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
