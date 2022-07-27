import 'package:flutter/material.dart';
import 'package:flutter_basic/utils/app_styles.dart';
import 'package:flutter_basic/widgets/text_box.dart';
import 'package:gap/gap.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            /* ------------------------------- Sign up image ------------------------------ */
            Container(
              width: width,
              height: height * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/signup.png",
                  ),
                  fit: BoxFit.contain,
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
                    "Create your account",
                    style: Styles.heading5,
                  ),
                  Gap(20),
                  /* -------------------------------- Username -------------------------------- */
                  TextBox(
                    hintText: "Enter your email address",
                    isObscureText: false,
                    prefixIcon: Icon(
                      Icons.email,
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
              child: Text("Sign Up"),
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
