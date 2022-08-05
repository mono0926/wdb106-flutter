import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';

import '../../helper/dummy_items.dart';

void main() {
  test('CartController test', () async {
    final container = ProviderContainer(
      overrides: [
        itemStocksProvider.overrideWithValue(
          AsyncValue.data(dummyItemStocks),
        ),
      ],
    );
    final target = container.read(cartProvider.notifier);
    expect(container.read(cartProvider).isEmpty, isTrue);
    expect(container.read(cartProvider).totalQuantity, 0);
    expect(container.read(cartTotalPriceLabelProvider), '合計金額 0円+税');

    target.add('1');

    expect(container.read(cartProvider).isEmpty, isFalse);
    expect(container.read(cartProvider).totalQuantity, 1);
    expect(container.read(cartProvider).itemIds.first, '1');
    expect(container.read(cartProvider).totalQuantity, 1);
    expect(container.read(cartTotalPriceLabelProvider), '合計金額 100円+税');

    target.delete('1');

    expect(container.read(cartProvider).isEmpty, isTrue);
    expect(container.read(cartProvider).totalQuantity, 0);
    expect(container.read(cartTotalPriceLabelProvider), '合計金額 0円+税');
  });
}
