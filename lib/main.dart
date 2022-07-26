import 'package:flutter/material.dart';
import 'package:flutter_basic/screens/wrapper.dart';
import 'package:flutter_basic/utils/app_styles.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Immence',
      theme: ThemeData(
        primaryColor: Styles.primaryColor,
      ),
      home: const Wrapper(),
    );
  }
}