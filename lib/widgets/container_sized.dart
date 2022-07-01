import 'package:flutter/material.dart';

class ContainerSized extends StatelessWidget {
  const ContainerSized({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        title: const Text("Container and SizedBox"),
      ),
      body: const Center(
        child: SizedBox(
          height: 50,
          width: 50,
          child: Text("SizedBox"),
        ),
      ),
    );
  }
}
