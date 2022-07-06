import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              action: SnackBarAction(
                label: "Undo",
                textColor: Colors.blue,
                onPressed: () {},
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              behavior: SnackBarBehavior.floating,
              // padding: EdgeInsets.all(0),
              duration: const Duration(
                milliseconds: 3000,
              ),
              backgroundColor: Colors.red,
              content: const Text("Snackbar here"),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text("Snackbar"),
        ),
      ),
    );
  }
}
