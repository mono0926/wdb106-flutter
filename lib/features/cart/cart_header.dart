import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wdb106_sample/features/items/items.dart';

import 'cart.dart';

part 'cart_header.freezed.dart';
part 'cart_header.g.dart';

class CartHeader extends ConsumerWidget {
  const CartHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 55,
      color: Colors.grey[300],
      child: Center(
        child: Text(
          ref.watch(cartPriceProvider.select((s) => s.label)),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

@riverpod
CartPrice cartPrice(CartPriceRef ref) {
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
}

@freezed
class CartPrice with _$CartPrice {
  factory CartPrice(int price) = _CartPrice;
  CartPrice._();

  late final label = '合計金額 ${Item.formatPrice(price)}';
}
