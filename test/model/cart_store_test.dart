import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/model/cart_store.dart';
import 'package:wdb106_sample/model/model.dart';

void main() {
  test('CartStore test', () async {
    final target = CartStore();
    expect(target.items.value.isEmpty, true);

    const item = Item(
      id: 1,
      title: 'test',
      price: 101,
      imageUrl: 'http://example.com',
    );

    expect(target.items.value.isEmpty, true);

    target.add(item);

    expect(target.items.value.length, 1);
    final cartItem = target.items.value.first;
    expect(cartItem.item, item);
    expect(cartItem.quantity, 1);

    target.delete(item);

    expect(target.items.value.isEmpty, true);
  });
}
