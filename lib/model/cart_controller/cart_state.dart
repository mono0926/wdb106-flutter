import 'package:freezed_annotation/freezed_annotation.dart';

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
