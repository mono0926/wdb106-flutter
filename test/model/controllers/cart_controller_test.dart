import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/model/model.dart';

void main() {
  test('CartController test', () async {
    final target = CartController();
    expect(target.debugState.sortedItems, isEmpty);
    var summary = target.debugState.summary;
    expect(summary.state, 'カート(0)');
    expect(summary.totalPriceState, '合計金額 0円+税');

    final item = Item(
      id: 1,
      title: 'test',
      price: 101,
      imageUrl: 'http://example.com',
    );

    expect(target.debugState.sortedItems, isEmpty);
    summary = target.debugState.summary;
    expect(summary.state, 'カート(0)');
    expect(summary.totalPriceState, '合計金額 0円+税');

    target.add(item);

    expect(target.debugState.sortedItems.length, 1);
    final cartItem = target.debugState.sortedItems.first;
    expect(cartItem.item, item);
    expect(cartItem.quantity, 1);
    summary = target.debugState.summary;
    expect(summary.state, 'カート(1)');
    expect(summary.totalPriceState, '合計金額 101円+税');

    target.delete(item);

    expect(target.debugState.sortedItems, isEmpty);
    summary = target.debugState.summary;
    expect(summary.state, 'カート(0)');
    expect(summary.totalPriceState, '合計金額 0円+税');
  });
}
