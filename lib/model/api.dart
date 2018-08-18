import 'dart:async';

import 'package:wdb106_sample/model/item.dart';

abstract class ApiClient {
  Future<List<Item>> getItems();
}

class DummyApiClient implements ApiClient {
  @override
  Future<List<Item>> getItems() async {
    await Future.delayed(Duration(seconds: 1));
    final list = List<int>.generate(5, (i) => i + 1).map((i) {
      final urls = [
        'https://gihyo.jp/assets/images/gdp/2017/978-4-7741-9229-1.jpg',
        'https://gihyo.jp/assets/images/gdp/2017/978-4-7741-9392-2.jpg',
        'https://gihyo.jp/assets/images/gdp/2017/978-4-7741-9533-9.jpg',
        'https://gihyo.jp/assets/images/gdp/2018/978-4-7741-9668-8.jpg',
        'https://gihyo.jp/assets/images/gdp/2018/978-4-7741-9792-0.jpg',
      ];
      final num = i + 99;
      return Item(
        id: num,
        price: 1480,
        title: 'WEB+DB PRESS $num',
        imageUrl: urls[i - 1],
      );
    }).toList();
    return list;
  }
}
