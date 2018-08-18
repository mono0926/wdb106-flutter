import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/model/item.dart';

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
}
