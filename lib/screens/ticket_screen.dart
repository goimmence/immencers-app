import 'package:flutter/material.dart';
import 'package:flutter_basic/screens/ticket_card.dart';
import 'package:flutter_basic/utils/app_info_list.dart';
import 'package:flutter_basic/utils/app_layout.dart';
import 'package:flutter_basic/utils/app_styles.dart';
import 'package:flutter_basic/widgets/ticket_tabs.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.backGroundColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets", style: Styles.heading4),
              Gap(AppLayout.getHeight(20)),
              const TicketTabs(firstTab: "Upcoming", secondTab: "Preview"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketCard(ticket: ticketList[0], isColor: true),
              )
            ],
          ),
        ],
      ),
    );
  }
}
