import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/button.dart';
import 'package:flutter_basic/widgets/container_and_sizedbox.dart';
import 'package:flutter_basic/widgets/dismissible.dart';
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
      home: const DismissibleWidget(),
    );
  }
}
