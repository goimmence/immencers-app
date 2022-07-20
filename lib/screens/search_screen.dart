import 'package:flutter/material.dart';
import 'package:flutter_basic/utils/app_layout.dart';
import 'package:flutter_basic/utils/app_styles.dart';
import 'package:flutter_basic/widgets/double_text_widget.dart';
import 'package:flutter_basic/widgets/icon_text_widget.dart';
import 'package:flutter_basic/widgets/ticket_tabs.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.backGroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(
            AppLayout.getHeight(40),
          ),
          Text(
            "What are\nyou looking for?",
            style: Styles.heading1.copyWith(fontSize: 35),
          ),
          Gap(
            AppLayout.getHeight(20),
          ),
          const TicketTabs(
            firstTab: "Airline Tickets",
            secondTab: "Hotels",
          ),
          Gap(
            AppLayout.getHeight(25),
          ),
          // Departure
          const AppIconTextWidget(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(
            AppLayout.getHeight(20),
          ),
          // Arrival
          const AppIconTextWidget(
              icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(
            AppLayout.getHeight(25),
          ),
          // Find tickets
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(18),
              vertical: AppLayout.getHeight(18),
            ),
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(10),
              ),
            ),
            child: Center(
              child: Text(
                "Find tickets",
                style: Styles.body1.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(
            AppLayout.getHeight(40),
          ),
          // Upcoming Flights
          const AppDoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "View all"),
          Gap(AppLayout.getHeight(15)),
          // Image
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(370),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(15),
                  horizontal: AppLayout.getWidth(15),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(12),
                        ),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg"),
                        ),
                      ),
                    ),
                    Gap(
                      AppLayout.getHeight(12),
                    ),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out this chance.",
                      style: Styles.heading5,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      // # Discount for survey
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(144),
                        padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15),
                          horizontal: AppLayout.getHeight(15),
                        ),
                        decoration: BoxDecoration(
                          color: Styles.yellowColor,
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(18),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.heading5.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            Gap(
                              AppLayout.getHeight(10),
                            ),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.heading6.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -40,
                        top: -30,
                        // Dark yellow circle
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 18, color: Styles.darkYellowColor),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(
                    AppLayout.getHeight(15),
                  ),
                  // Red circle
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(15),
                      horizontal: AppLayout.getHeight(15),
                    ),
                    decoration: BoxDecoration(
                      color: Styles.redColor,
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(18),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: Styles.heading5.copyWith(color: Colors.white),
                        ),
                        Gap(
                          AppLayout.getHeight(15),
                        ),
                        // Emoji
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 30),
                              ),
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 30),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
