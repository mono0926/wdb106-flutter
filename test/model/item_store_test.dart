import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/model/item_store.dart';

void main() {
  ItemStore target;
  final item = Item(
    id: 1,
    title: 'test',
    price: 101,
    imageUrl: 'http://example.com',
    inventory: 1,
  );

  setUp(() {
    target = ItemStore();
  });
  test('ItemStore test', () async {
    expect(target.stocks.isEmpty, true);

    target.initialize([item]);

    expect(target.stocks.length, 1);
    var itemStored = target.stocks.first;
    expect(itemStored.inventory, 1);

    target.increase(itemStored);

    expect(target.stocks.length, 1);
    itemStored = target.stocks.first;
    expect(itemStored.inventory, 2);

    target.decrease(itemStored);

    expect(target.stocks.length, 1);
    itemStored = target.stocks.first;
    expect(itemStored.inventory, 1);

    target.decrease(itemStored);

    expect(target.stocks.length, 1);
    itemStored = target.stocks.first;
    expect(itemStored.inventory, 0);
  });
}
