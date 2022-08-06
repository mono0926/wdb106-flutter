import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:wdb106_sample/model/cart_price.dart';
import 'package:wdb106_sample/model/model.dart';

import '../../helper/dummy_items.dart';

void main() {
  setUpAll(() {
    Intl.defaultLocale = 'ja';
  });
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
    expect(container.read(cartPriceProvider).value!.label, '合計金額 0円+税');

    target.add('1');

    expect(container.read(cartProvider).isEmpty, isFalse);
    expect(container.read(cartProvider).totalQuantity, 1);
    expect(container.read(cartProvider).itemIds.first, '1');
    expect(container.read(cartProvider).totalQuantity, 1);
    expect(container.read(cartPriceProvider).value!.label, '合計金額 100円+税');

    target.delete('1');

    expect(container.read(cartProvider).isEmpty, isTrue);
    expect(container.read(cartProvider).totalQuantity, 0);
    expect(container.read(cartPriceProvider).value!.label, '合計金額 0円+税');
  });
}
