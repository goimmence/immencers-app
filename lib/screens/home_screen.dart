import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_basic/models/catalog.dart';
import 'package:flutter_basic/utils/routes.dart';
import 'package:flutter_basic/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_basic/widgets/home_widgets/catalog_list.dart';
import 'package:flutter_basic/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
        child: Icon(CupertinoIcons.cart),
      ),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
                CatalogList().py16().expand()
              else
                CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
