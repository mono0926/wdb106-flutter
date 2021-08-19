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
    expect(container.read(cartEmptyProvider), isTrue);
    expect(container.read(cartTotalQuantityProvider), 0);
    expect(container.read(cartTotalPriceLabelProvider), '合計金額 0円+税');

    target.add('1');

    expect(container.read(cartEmptyProvider), isFalse);
    expect(container.read(cartTotalQuantityProvider), 1);
    expect(container.read(cartItemIdsProvider).first, '1');
    expect(container.read(cartTotalQuantityProvider), 1);
    expect(container.read(cartTotalPriceLabelProvider), '合計金額 100円+税');

    target.delete('1');

    expect(container.read(cartEmptyProvider), isTrue);
    expect(container.read(cartTotalQuantityProvider), 0);
    expect(container.read(cartTotalPriceLabelProvider), '合計金額 0円+税');
  });
}
