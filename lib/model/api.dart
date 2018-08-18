import 'dart:async';

import 'package:meta/meta.dart';
import 'package:wdb106_sample/model/item.dart';

abstract class ApiClient {
  Future<List<Item>> getItems();
}

class DummyApiClient implements ApiClient {
  final Duration dummyDelay;

  DummyApiClient({
    @required this.dummyDelay,
  });

  @override
  Future<List<Item>> getItems() async {
    if (dummyDelay.inMilliseconds > 0) {
      await Future.delayed(dummyDelay);
    }
    // Dummy response
    final urls = {
      100: 'https://gihyo.jp/assets/images/gdp/2017/978-4-7741-9229-1.jpg',
      101: 'https://gihyo.jp/assets/images/gdp/2017/978-4-7741-9392-2.jpg',
      102: 'https://gihyo.jp/assets/images/gdp/2017/978-4-7741-9533-9.jpg',
      103: 'https://gihyo.jp/assets/images/gdp/2018/978-4-7741-9668-8.jpg',
      104: 'https://gihyo.jp/assets/images/gdp/2018/978-4-7741-9792-0.jpg',
    };
    final list = urls.entries.map((entry) {
      final num = entry.key;
      return Item(
        id: num,
        price: 1480,
        title: 'WEB+DB PRESS $num',
        imageUrl: entry.value,
      );
    }).toList();
    return list;
  }
}
