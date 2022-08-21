import 'package:flutter/material.dart';
import '../widget/product_grid.dart';

enum FilterOption {
  onlyFavorites,
  showAll,
}

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text("My Shop"), 
        actions: [
          PopupMenuButton(
            onSelected: (FilterOption selectedValue) {
              setState(() {
                if (selectedValue == FilterOption.onlyFavorites) {
                  _showOnlyFavorite = true;
                } else {
                  _showOnlyFavorite = false; 
                }
              });
            },
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                  value: FilterOption.onlyFavorites,
                  child: Text('Only Favorites')),
              const PopupMenuItem(
                  value: FilterOption.showAll, child: Text('Show All')),
            ],
          ),
        ],
      ),
      body: ProductsGrid(showFavorite: _showOnlyFavorite),
    );
  }
}