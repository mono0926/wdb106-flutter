import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/item_stocks.dart';

void main() {
  test('items fetcher test', () async {
    final container = ProviderContainer();
    final stocks = await container.read(itemStocks.future);
    expect(stocks.length, 5);
    final stock = stocks.first;
    final item = stock.item;
    expect(item.id, '100');
    expect(item.price, 1480);
    expect(item.title, 'WEB+DB PRESS 100');
    expect(
      item.imageUrl,
      'https://gihyo.jp/assets/images/gdp/2017/978-4-7741-9229-1.jpg',
    );
    expect(stock.quantity, 5);
  });
}
