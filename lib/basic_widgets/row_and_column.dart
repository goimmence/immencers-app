import 'package:flutter/material.dart';

class RowAndColumn extends StatelessWidget {
  const RowAndColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Raw and Column"),
      ),
      body: Container(
        width: width,
        height: height,
        color: Colors.yellow,
        /*
          # Wrap[]
          - If you are using Row[] and elements are not fit in the screen.
          - Use Wrap[] it will automatically adjust all the elements according to the space.
          - But you will not have main & cross alignment access.

          # Use of Wrap[]
          - e.g.
          - In profile screen or in bio if you use Raw[] text will be overflow.
          - If you use Wrap[] text will automatically adjust and take shape like paragraph.
        */
        // Change this child: Raw(), Wrap(), Column()
        child: Column(
          // direction: Axis.vertical,
          // alignment: WrapAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.red,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.blue,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
