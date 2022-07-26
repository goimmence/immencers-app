import 'package:flutter/material.dart';
import 'package:flutter_basic/screens/auth/authenticate.dart';
import 'package:flutter_basic/screens/home/bottom_bar.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    // Return either Home or Authenticate widget

    return Authenticate();
  }
}
