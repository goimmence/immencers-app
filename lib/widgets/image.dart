import 'package:cached_network_image/cached_network_image.dart';
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
          height: 200,
          width: 300,

          // decoration: BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //       blurRadius: 10,
          //       spreadRadius: 5.0,
          //       color: Colors.grey.shade800,
          //     )
          //   ],
          //   image: const DecorationImage(
          //     image: AssetImage(
          //       "assets/batman.jpg",
          //     ),
          //     fit: BoxFit.cover,
          //   ),
          //   borderRadius: BorderRadius.circular(20),
          //   color: Colors.red,
          // ),

          child: CachedNetworkImage(
            imageUrl:
                "https://cdn.mos.cms.futurecdn.net/m6txc3A6HUa22VqX5QGALc.jpg",
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
