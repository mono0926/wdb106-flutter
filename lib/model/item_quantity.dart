import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'model.dart';

part 'item_quantity.freezed.dart';

final itemQuantityProviders = Provider.family((ref, String id) {
  return ref.watch(itemStocksProvider).whenData((itemStocks) {
    final stock = itemStocks.itemStock(id);
    if (stock == null) {
      return ItemQuantity(0);
    }
    final cartItemQuantity = ref.watch(
      cartProvider.select((s) => s.quantity(id)),
    );
    return ItemQuantity(stock.quantity - cartItemQuantity);
  });
});

@freezed
class ItemQuantity with _$ItemQuantity {
  factory ItemQuantity(int quantity) = _ItemQuantity;
  ItemQuantity._();

  late final hasStock = quantity > 0;
}
