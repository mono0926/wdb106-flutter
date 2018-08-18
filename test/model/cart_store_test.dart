import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/model/cart_store.dart';

void main() {
  test('CartStore test', () async {
    final target = CartStore();
    expect(target.items.isEmpty, true);
    expect(target.totalPrice, 0);
    expect(target.totalQuantity, 0);

    final item = Item(
      id: 1,
      title: 'test',
      price: 101,
      imageUrl: 'http://example.com',
      inventory: 1,
    );
    target.add(item);

    expect(target.items.length, 1);
    expect(target.totalPrice, 101);
    expect(target.totalQuantity, 1);

    target.delete(item);

    expect(target.items.isEmpty, true);
    expect(target.totalPrice, 0);
    expect(target.totalQuantity, 0);
  });
}
