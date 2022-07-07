import 'package:flutter/material.dart';
import 'package:flutter_basic/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key, required this.item}) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          onTap: () {
            debugPrint("${item.name} pressed");
          },
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.description),
          trailing: Text(
            '\$${item.price}',
            textScaleFactor: 1.5,
            style: const TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
