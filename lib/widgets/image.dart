import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Widget"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 250,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 5.0,
                color: Colors.grey.shade800,
              )
            ],
            image: const DecorationImage(
              image: NetworkImage(
                "https://images.theconversation.com/files/450362/original/file-20220307-121610-zfik1f.jpeg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop",
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
