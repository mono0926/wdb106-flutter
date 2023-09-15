import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/features/items/items.dart';
import 'package:wdb106_sample/util/util.dart';

void main() {
  test('ItemStock.fromJson test', () async {
    const source = '''
    {
      "id": "100",
      "price": 200,
      "title": "test",
      "imageUrl": "https://mono0926.com/images/love_logo.png",
      "quantity": 5
    }
    ''';

    final json = jsonDecode(source) as JsonMap;
    final target = ItemStock.fromJson(json);
    final item = target.item;
    expect(
      item,
      Item(
        id: '100',
        price: 200,
        title: 'test',
        imageUrl: 'https://mono0926.com/images/love_logo.png',
      ),
    );
    expect(target.quantity, 5);
  });
}
