import 'dart:async';

import 'package:wdb106_sample/model/api.dart';
import 'package:wdb106_sample/model/item.dart';

class FakeApiClient implements ApiClient {
  List<Item> items;

  FakeApiClient({this.items}) {
    items ??= [
      Item(
        id: 1,
        title: 'test1',
        price: 100,
        inventory: 2,
        imageUrl: 'https://mono0926.com/images/love_logo.png',
      ),
      Item(
        id: 2,
        title: 'test2',
        price: 101,
        inventory: 3,
        imageUrl: 'https://mono0926.com/images/love_logo.png',
      ),
    ];
  }

  @override
  Future<List<Item>> getItemStocks() => Future.value(items);
}
