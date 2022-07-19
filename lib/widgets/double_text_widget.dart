import 'package:flutter/material.dart';
import 'package:flutter_basic/utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  
  final String bigText;
  final String smallText;

  const AppDoubleTextWidget({
    Key? key,
    required this.bigText,
    required this.smallText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.heading5,
        ),
        InkWell(
          onTap: () {
            debugPrint("You have tapped");
          },
          child: Text(
            smallText,
            style: Styles.body1.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
