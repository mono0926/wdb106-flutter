import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/model/api.dart';

import '../helper/api.dart';

void main() {
  test('api test', () async {
    final target = MockApiClient();
    final items = await target.getItems();
    expect(items.length, 2);
    final item = items.first;
    expect(item.id, 1);
    expect(item.price, 100);
    expect(item.title, 'test1');
    expect(item.imageUrl, 'https://mono0926.com/images/love_logo.png');
    expect(item.inventory, 2);
  });
}
