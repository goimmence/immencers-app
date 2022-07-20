// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:flutter_basic/utils/app_layout.dart';
import 'package:flutter_basic/utils/app_styles.dart';

class TicketDetails extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;

  const TicketDetails({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText, style: Styles.heading6),
        Gap(AppLayout.getHeight(5)),
        Text(secondText, style: Styles.body1.copyWith(color: Styles.grayColor)),
      ],
    );
  }
}
