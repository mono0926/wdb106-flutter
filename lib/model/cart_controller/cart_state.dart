import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wdb106_sample/model/model.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  factory CartState({
    @Default(<String, CartItem>{}) Map<String, CartItem> itemMap,
  }) = _CartState;

  CartState._();

  late final List<CartItem> sortedItems = itemMap.values.toList()
    ..sort((a, b) => a.item.id.compareTo(b.item.id));

  late final summary = CartSummary(
    quantity: itemMap.values.fold<int>(
      0,
      (sum, e) => sum + e.quantity,
    ),
    totalPrice: itemMap.values.fold<int>(
      0,
      (sum, e) => sum + e.item.price * e.quantity,
    ),
  );

  CartItem? cartItem(Item item) => sortedItems.firstWhereOrNull(
        (cartItem) => cartItem.item == item,
      );
}

@freezed
class CartSummary with _$CartSummary {
  factory CartSummary({
    @Default(0) int quantity,
    @Default(0) int totalPrice,
  }) = _CartSummary;
  CartSummary._();

  late final state = 'カート($quantity)';
  late final totalPriceState = '合計金額 $totalPrice円+税';
}
