import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_basic/utils/app_layout.dart';
import 'package:flutter_basic/utils/app_styles.dart';
import 'package:flutter_basic/widgets/small_circle.dart';
import 'package:get/get_utils/src/platform/platform.dart';

class TicketCard extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;

  const TicketCard({
    Key? key,
    required this.ticket,
    this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 164 : 169),
      // Outer side container which use for margin.
      child: Container(
        // color: Colors.green,
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            /* ---------------- Blue part of the card ---------------- */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.primaryColor : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Styles.heading6.copyWith(color: Colors.white)
                            : Styles.heading6.copyWith(color: Colors.black),
                      ),
                      const Spacer(),
                      // TODO: Remove the isColor parameter to fix the search screen small circle icon.
                      const SmallCircle(isColor: true),
                      /* ----------------------------- Small dash lines ---------------------------- */
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: isColor == null
                                                ? Colors.white
                                                : Styles.primaryColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            /* ------------------------------ Airplane icon ----------------------------- */
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : Styles.primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // TODO: Remove the isColor parameter to fix the search screen small circle icon.
                      const SmallCircle(
                        isColor: true,
                      ),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? Styles.heading6.copyWith(color: Colors.white)
                            : Styles.heading6.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == null
                              ? Styles.body1.copyWith(color: Colors.white)
                              : Styles.body1.copyWith(color: Styles.grayColor),
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? Styles.body1.copyWith(color: Colors.white)
                            : Styles.body1.copyWith(color: Colors.black),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.body1.copyWith(color: Colors.white)
                              : Styles.body1.copyWith(color: Styles.grayColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /* ------------------ Big dash lines ------------------ */
            Container(
              color: isColor == null ? Styles.redColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                            AppLayout.getHeight(10),
                          ),
                          bottomRight: Radius.circular(
                            AppLayout.getHeight(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(
                        AppLayout.getHeight(12),
                      ),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: isColor == null
                                        ? Colors.white
                                        : Styles.grayColor,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(10)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /* ------------------ Red part of the card ------------------ */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.redColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                      isColor == null ? AppLayout.getHeight(21) : 0),
                  bottomRight: Radius.circular(
                      isColor == null ? AppLayout.getHeight(21) : 0),
                ),
              ),
              padding: const EdgeInsets.only(
                left: 16,
                top: 10,
                right: 16,
                bottom: 16,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: isColor == null
                                ? Styles.heading6.copyWith(color: Colors.white)
                                : Styles.heading6
                                    .copyWith(color: Styles.textColor),
                          ),
                          const Gap(5),
                          Text(
                            "Date",
                            style: isColor == null
                                ? Styles.body1.copyWith(color: Colors.white)
                                : Styles.body1
                                    .copyWith(color: Styles.grayColor),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: isColor == null
                                ? Styles.heading6.copyWith(color: Colors.white)
                                : Styles.heading6
                                    .copyWith(color: Styles.textColor),
                          ),
                          const Gap(5),
                          Text(
                            "Departure time",
                            style: isColor == null
                                ? Styles.body1.copyWith(color: Colors.white)
                                : Styles.body1
                                    .copyWith(color: Styles.grayColor),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: isColor == null
                                ? Styles.heading6.copyWith(color: Colors.white)
                                : Styles.heading6
                                    .copyWith(color: Styles.textColor),
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style: isColor == null
                                ? Styles.body1.copyWith(color: Colors.white)
                                : Styles.body1
                                    .copyWith(color: Styles.grayColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}