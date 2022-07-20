// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_basic/utils/app_styles.dart';

class SmallCircle extends StatelessWidget {
  final bool? isColor;

  const SmallCircle({
    Key? key,
    this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2.5,
          color: isColor == null ? Colors.white : Styles.primaryColor,
        ),
      ),
    );
  }
}
