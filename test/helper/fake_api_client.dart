import 'dart:async';

import 'package:wdb106_sample/model/api.dart';
import 'package:wdb106_sample/model/entities/item.dart';
import 'package:wdb106_sample/model/entities/item_stock.dart';

class FakeApiClient implements ApiClient {
  FakeApiClient({this.items}) {
    items ??= [
      const ItemStock(
          quantity: 2,
          item: Item(
            id: 1,
            title: 'test1',
            price: 100,
            imageUrl: 'https://mono0926.com/images/love_logo.png',
          )),
      const ItemStock(
          quantity: 3,
          item: Item(
            id: 2,
            title: 'test2',
            price: 101,
            imageUrl: 'https://mono0926.com/images/love_logo.png',
          ))
    ];
  }

  List<ItemStock> items;

  @override
  Future<List<ItemStock>> getItemStocks() => Future.value(items);
}
