// ignore_for_file: avoid_unnecessary_containers

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_basic/models/catalog.dart';
import 'package:flutter_basic/widgets/drawer.dart';

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
          child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    final item = CatalogModel.items![index];
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        header: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: const BoxDecoration(
                            color: Colors.deepPurple,
                          ),
                          child: Text(
                            item.name,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        footer: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: const BoxDecoration(
                            color: Colors.deepPurple,
                          ),
                          child: Text(
                            item.price.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        child: Image.network(
                          item.image,
                        ),
                      ),
                    );
                  },
                  itemCount: CatalogModel.items?.length,
                )
              : const Center(
                  child: CircularProgressIndicator(),
                )),
      drawer: const MyDrawer(),
    );
  }
}
