// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_basic/utils/app_styles.dart';

class SmallDashLineWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double? width;

  const SmallDashLineWidget({
    Key? key,
    this.isColor,
    required this.sections,
    this.width = 3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constraints.constrainWidth() / sections).floor(),
            (index) => SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isColor == null ? Colors.white : Styles.grayColor,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
