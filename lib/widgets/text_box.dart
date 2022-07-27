// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_basic/utils/app_styles.dart';

class TextBox extends StatelessWidget {
  final String hintText;
  final bool isObscureText;
  final Widget prefixIcon;

  const TextBox({
    Key? key,
    required this.hintText,
    required this.isObscureText,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        obscureText: isObscureText,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Styles.primaryColor, width: 2.0),
          ),
        ),
      ),
    );
  }
}
