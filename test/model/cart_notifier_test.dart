import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:wdb106_sample/model/cart_price.dart';
import 'package:wdb106_sample/model/model.dart';

import '../helper/dummy_items.dart';

void main() {
  setUpAll(() {
    Intl.defaultLocale = 'ja';
  });
  test('CartController test', () async {
    final container = ProviderContainer(
      overrides: [
        itemStocksProvider.overrideWithProvider(dummyItemStocksProvider),
      ],
    );
    // overrideWithValue に戻したら不要になる
    await container.read(itemStocksProvider.future);

    final target = container.read(cartProvider.notifier);
    final itemQuantityProvider = itemQuantityProviders('1');
    expect(container.read(cartProvider).isEmpty, isTrue);
    expect(container.read(cartProvider).totalQuantity, 0);
    expect(container.read(cartPriceProvider).label, '合計金額 0円+税');
    expect(container.read(itemQuantityProvider).quantity, 2);

    target.add('1');

    expect(container.read(cartProvider).isEmpty, isFalse);
    expect(container.read(cartProvider).totalQuantity, 1);
    expect(container.read(cartProvider).itemIds.first, '1');
    expect(container.read(cartProvider).totalQuantity, 1);
    expect(container.read(cartPriceProvider).label, '合計金額 100円+税');
    expect(container.read(itemQuantityProvider).quantity, 1);

    target.delete('1');

    expect(container.read(cartProvider).isEmpty, isTrue);
    expect(container.read(cartProvider).totalQuantity, 0);
    expect(container.read(cartPriceProvider).label, '合計金額 0円+税');
    expect(container.read(itemQuantityProvider).quantity, 2);
  });
}
