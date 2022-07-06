import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: const Text("Test"),
        ),
        // drawer: MyDrawer(),
      ),
    );
  }
}
