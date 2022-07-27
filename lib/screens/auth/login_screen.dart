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
                    "Hello",
                    style: Styles.heading3,
                  ),
                  Text(
                    "Login into your account",
                    style: Styles.body1.copyWith(
                      color: Styles.grayColor,
                    ),
                  ),
                  Gap(20),
                  /* -------------------------------- Text box 1-------------------------------- */
                  TextBox(
                    hintText: "Enter Username ",
                    isObscureText: false,
                  ),
                  Gap(20),
                  /* ------------------------------- Text box 2 ------------------------------- */
                  TextBox(
                    hintText: "Enter Password",
                    isObscureText: true,
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
            Gap(20),
            /* ----------------------------- Login in button ----------------------------- */
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Styles.primaryColor,
                minimumSize: Size(140.0, 40.0),
              ),
              child: Text("Login"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
