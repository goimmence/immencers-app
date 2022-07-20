import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/screens/hotel_screen.dart';
import 'package:flutter_basic/screens/ticket_card.dart';
import 'package:flutter_basic/utils/app_info_list.dart';
import 'package:flutter_basic/utils/app_layout.dart';
import 'package:flutter_basic/utils/app_styles.dart';
import 'package:flutter_basic/widgets/double_text_widget.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backGroundColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                // Good Morning
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.subtitle1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Book Tickets",
                          style: Styles.heading4,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/app_icon.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(
                  AppLayout.getHeight(25),
                ),
                // Search
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Styles.whiteColor,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Styles.grayColor,
                      ),
                      Text(
                        "Search",
                        style: Styles.subtitle1,
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                // Upcoming Flights
                const AppDoubleTextWidget(
                    bigText: "Upcoming Flights", smallText: "View all"),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          // Hotels
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Row(
              children: ticketList
                  .map(
                    (singleTicket) => TicketCard(ticket: singleTicket),
                  )
                  .toList(),
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleTextWidget(
                bigText: "Hotels", smallText: "View all"),
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children:
                  /*
                - <hotelList> has map which contain details about the hotels.
                - We are accessing map from <hotelList> and passing to <HotelScreen> in list format.
                - One hotel detail at time.
              */
                  hotelList
                      .map((singleHotel) => HotelScreen(hotel: singleHotel))
                      .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
