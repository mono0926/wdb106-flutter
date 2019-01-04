import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/model/entities/item.dart';

void main() {
  test('Item test', () async {
    final target = Item(
      id: 1,
      title: 'test',
      price: 101,
      imageUrl: 'http://example.com',
      inventory: 1,
    );
    expect(target.id, 1);
    expect(target.inventory, 1);
    target.increase();
    expect(target.inventory, 2);
    target.decrease();
    expect(target.inventory, 1);
  });

  test('Item.fromJSON test', () async {
    const source = '''
    {
      "id": 100,
      "price": 200,
      "title": "test",
      "imageUrl": "https://mono0926.com/images/love_logo.png",
      "inventory": 5
    }
    ''';

    final json = jsonDecode(source);
    final target = Item.fromJSON(json as Map<String, dynamic>);
    expect(target.id, 100);
    expect(target.price, 200);
    expect(target.title, 'test');
    expect(target.imageUrl, 'https://mono0926.com/images/love_logo.png');
    expect(target.inventory, 5);
  });
}
