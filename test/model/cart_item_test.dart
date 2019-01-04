import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/model/entities/cart_item.dart';

void main() {
  test('CartItem test', () async {
    final target = CartItem(
      item: Item(
        id: 1,
        title: 'test',
        price: 101,
        imageUrl: 'http://example.com',
        inventory: 1,
      ),
    );
    expect(target.item.id, 1);
    expect(target.quantity, 0);
    target.increase();
    expect(target.quantity, 1);
    target.decrease();
    expect(target.quantity, 0);
  });
}
