import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wdb106_sample/model/model.dart';

part 'cart_state.freezed.dart';

@freezed
abstract class CartState with _$CartState {
  factory CartState({
    @Default(<int, CartItem>{}) Map<int, CartItem> itemMap,
  }) = _CartState;

  @late
  List<CartItem> get sortedItems =>
      itemMap.values.toList()..sort((a, b) => a.item.id.compareTo(b.item.id));

  @late
  CartSummary get summary => CartSummary(
        quantity: itemMap.values.fold<int>(
          0,
          (sum, e) => sum + e.quantity,
        ),
        totalPrice: itemMap.values.fold<int>(
          0,
          (sum, e) => sum + e.item.price * e.quantity,
        ),
      );
}

@freezed
abstract class CartSummary with _$CartSummary {
  factory CartSummary({
    @Default(0) int quantity,
    @Default(0) int totalPrice,
  }) = _CartSummary;

  @late
  String get state => 'カート($quantity)';
  @late
  String get totalPriceState => '合計金額 $totalPrice円+税';
}
