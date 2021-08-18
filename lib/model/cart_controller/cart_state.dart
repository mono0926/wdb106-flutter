import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wdb106_sample/model/model.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  factory CartState({
    @Default(<String, int>{}) Map<String, int> itemMap,
  }) = _CartState;

  CartState._();

  late final List<String> sortedItemIds = itemMap.keys.toList()
    ..sort((a, b) => a.compareTo(b));
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
