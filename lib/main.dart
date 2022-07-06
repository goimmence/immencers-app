import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/alert.dart';
import 'package:flutter_basic/widgets/animated_text.dart';
import 'package:flutter_basic/widgets/bottom_sheet_widget.dart';
import 'package:flutter_basic/widgets/button.dart';
import 'package:flutter_basic/widgets/container_and_sizedbox.dart';
import 'package:flutter_basic/widgets/dismissible.dart';
import 'package:flutter_basic/widgets/drawer.dart';
import 'package:flutter_basic/widgets/image.dart';
import 'package:flutter_basic/widgets/list_and_grid.dart';
import 'package:flutter_basic/widgets/row_and_column.dart';
import 'package:flutter_basic/widgets/snackbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
      ),
      // home: const ContainerAndSized();
      // home: const RowAndColumn(),
      // home: const ListAndGrid(),
      // home: const Button(),
      // home: const SnackBarWidget(),
      // home: const DismissibleWidget(),
      // home: const DrawerWidget(),
      // home: const ImageWidget(),
      // home: const AlertWidget(),
      // home: const BottomSheetWidget(),
      home: const AnimatedText(),
    );
  }
}
