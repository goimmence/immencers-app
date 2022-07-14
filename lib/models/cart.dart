import 'package:flutter_basic/models/catalog.dart';

class CartModel {
  // Catalog field
  late CatalogModel _catalog;

  // Collection of IDs - store IDs of each item
  final List<int> _itemIds = [];

  // Get Catalog
  CatalogModel get catalog => _catalog;

  // Setter
  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
