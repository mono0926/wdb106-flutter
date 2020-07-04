import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/model/entities/cart_item/cart_item.dart';
import 'package:wdb106_sample/model/model.dart';

void main() {
  test('CartItem test', () async {
    const target = CartItem(
      item: Item(
        id: 1,
        title: 'test',
        price: 101,
        imageUrl: 'http://example.com',
      ),
      quantity: 0,
    );
    expect(target.item.id, 1);
    expect(target.quantity, 0);
    expect(target.increased().quantity, 1);
    expect(target.quantity, 0);
    expect(target.increased().decreased().quantity, 0);
    expect(target.quantity, 0);
  });
}
