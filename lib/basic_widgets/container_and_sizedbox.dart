import 'package:flutter/material.dart';

class ContainerAndSized extends StatelessWidget {
  const ContainerAndSized({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        title: const Text("Container and SizedBox"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            color: Colors.blue,
            // shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(20),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 5,
                color: Colors.black,
              ),
            ],
          ),
          child: const Center(
            child: Text(
              "Container",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          // const Center(
          //   child: SizedBox(
          //     height: 50,
          //     width: 50,
          //     child: Text("SizedBox"),
          //   ),
          // ),
        ),
      ),
    );
  }
}
