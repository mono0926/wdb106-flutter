import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';

import '../../helper/dummy_items.dart';

void main() {
  test('CartController test', () async {
    final container = ProviderContainer(overrides: [
      itemStocksProvider.overrideWithValue(
        AsyncValue.data(dummyItems),
      ),
    ]);
    final target = container.read(cartController.notifier);
    var summary = container.read(cartSummaryProvider);
    expect(target.debugState.sortedItemIds, isEmpty);
    expect(summary.state, 'カート(0)');
    expect(summary.totalPriceState, '合計金額 0円+税');

    expect(target.debugState.sortedItemIds, isEmpty);
    summary = container.read(cartSummaryProvider);
    expect(summary.state, 'カート(0)');
    expect(summary.totalPriceState, '合計金額 0円+税');

    target.add('1');

    expect(target.debugState.sortedItemIds.length, 1);
    final cartItemId = target.debugState.sortedItemIds.first;
    expect(cartItemId, '1');
    summary = container.read(cartSummaryProvider);
    expect(summary.state, 'カート(1)');
    expect(summary.totalPriceState, '合計金額 100円+税');

    target.delete('1');

    expect(target.debugState.sortedItemIds, isEmpty);
    summary = container.read(cartSummaryProvider);
    expect(summary.state, 'カート(0)');
    expect(summary.totalPriceState, '合計金額 0円+税');
  });
}
