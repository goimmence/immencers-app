import 'package:flutter/material.dart';
import '../widget/product_grid.dart';

class ProductsOverScreen extends StatelessWidget {
  const ProductsOverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Shop"),
      ),
      body: ProductsGrid(),
    );
  }
}
