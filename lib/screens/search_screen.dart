import 'package:flutter/material.dart';
import 'package:flutter_basic/utils/app_layout.dart';
import 'package:flutter_basic/utils/app_styles.dart';
import 'package:flutter_basic/widgets/double_text_widget.dart';
import 'package:flutter_basic/widgets/icon_text_widget.dart';
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
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                color: const Color(0xFFF4F6FD),
              ),
              child: Row(
                children: [
                  // Airline tickets
                  Container(
                    width: size.width * .44,
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(7),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(
                          AppLayout.getHeight(50),
                        ),
                      ),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text("Airline tickets"),
                    ),
                  ),
                  // Hotels
                  Container(
                    width: size.width * .44,
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(7),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(
                          AppLayout.getHeight(50),
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                    child: const Center(
                      child: Text("Hotels"),
                    ),
                  ),
                ],
              ),
            ),
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
                height: AppLayout.getHeight(400),
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
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
