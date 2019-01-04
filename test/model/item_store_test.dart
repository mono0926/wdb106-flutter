import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/model/item_store.dart';
import 'package:wdb106_sample/model/model.dart';

void main() {
  ItemStore target;
  const item = ItemStock(
      item: Item(
        id: 1,
        title: 'test',
        price: 101,
        imageUrl: 'http://example.com',
      ),
      quantity: 1);

  setUp(() {
    target = ItemStore();
  });
  test('ItemStore test', () async {
    expect(target.stocks.value, null);

    target.update([item]);

    expect(target.stocks.value.length, 1);
    expect(target.stocks.value.first.quantity, 1);
  });
}
