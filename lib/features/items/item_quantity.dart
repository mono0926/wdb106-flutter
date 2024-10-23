import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wdb106_sample/features/cart/cart.dart';

import 'item_stocks.dart';

part 'item_quantity.freezed.dart';
part 'item_quantity.g.dart';

@riverpod
ItemQuantity itemQuantity(Ref ref, String id) {
  final cartItemQuantity = ref.watch(
    cartProvider.select((s) => s.quantity(id)),
  );
  final stock = ref.watch(itemStocksProvider).value?.itemStock(id);
  return ItemQuantity(stock == null ? 0 : stock.quantity - cartItemQuantity);
}

@freezed
class ItemQuantity with _$ItemQuantity {
  factory ItemQuantity(int quantity) = _ItemQuantity;
  ItemQuantity._();

  late final hasStock = quantity > 0;
}
