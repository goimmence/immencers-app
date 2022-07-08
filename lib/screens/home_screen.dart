import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_basic/models/catalog.dart';
import 'package:flutter_basic/widgets/drawer.dart';
import 'package:flutter_basic/widgets/item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // Delaying data for 2 seconds.
    await Future.delayed(const Duration(seconds: 2));
    // Taking json file
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    /*
      # What is JSON encode & decode?
      - encode: Any format(e..g Map) -> String
      - decode: String -> Any format (e.g. Map)
    */
    // Decode json data: String to Map
    final decodedData = jsonDecode(catalogJson);
    // Taking data from product
    var productsData = decodedData["products"];
    //Mapping json data to constructor
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty) ?  ListView.builder(
          itemCount: CatalogModel.items?.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items![index],
            );
          },
        ):const Center(
          child: CircularProgressIndicator(),
        )
      ),
      drawer: const MyDrawer(),
    );
  }
}
