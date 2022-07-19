import 'package:flutter/material.dart';
import 'package:flutter_basic/utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  const AppDoubleTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Upcoming Flight",
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            debugPrint("You have tapped");
          },
          child: Text(
            "View all",
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
