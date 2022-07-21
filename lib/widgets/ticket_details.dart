import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_basic/utils/app_layout.dart';
import 'package:flutter_basic/utils/app_styles.dart';

class TicketDetails extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  const TicketDetails({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.alignment,
    this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: isColor == null
              ? Styles.heading6.copyWith(color: Colors.white)
              : Styles.heading6.copyWith(color: Styles.textColor),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secondText,
          style: isColor == null
              ? Styles.body1.copyWith(color: Colors.white)
              : Styles.body1.copyWith(color: Styles.grayColor),
        ),
      ],
    );
  }
}
