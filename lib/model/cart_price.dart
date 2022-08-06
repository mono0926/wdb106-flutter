import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'model.dart';
part 'cart_price.freezed.dart';

final cartPriceProvider = Provider((ref) {
  final cart = ref.watch(cartProvider);
  final itemStocks = ref.watch(itemStocksProvider).value;
  return CartPrice(
    itemStocks == null
        ? 0
        : cart.itemIds.fold<int>(
            0,
            (sum, id) {
              final item = itemStocks.item(id)!;
              final quantity = cart.quantity(id);
              return sum + item.price * quantity;
            },
          ),
  );
});

@freezed
class CartPrice with _$CartPrice {
  factory CartPrice(int price) = _CartPrice;
  CartPrice._();

  late final label = '合計金額 ${Item.formatPrice(price)}';
}
