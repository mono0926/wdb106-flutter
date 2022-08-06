import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/model/item_quantity.dart';
import 'package:wdb106_sample/model/item_stocks.dart';

void main() {
  test('items stocks test', () async {
    final container = ProviderContainer();
    final stocks = await container.read(itemStocksProvider.future);
    expect(stocks.itemIds.length, 5);
    final stock = stocks.stocks.first;
    final item = stock.item;
    expect(item.id, '100');
    expect(item.price, 1480);
    expect(item.title, 'WEB+DB PRESS 100');
    expect(
      item.imageUrl,
      'https://gihyo.jp/assets/images/gdp/2017/978-4-7741-9229-1.jpg',
    );
    expect(stock.quantity, 5);
    final quantity = container.read(itemQuantityProviders('100'));
    expect(
      quantity.hasStock,
      isTrue,
    );
    expect(quantity.quantity, 5);
  });
}
