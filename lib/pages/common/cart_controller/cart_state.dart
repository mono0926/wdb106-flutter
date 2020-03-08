import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wdb106_sample/model/model.dart';

part 'cart_state.freezed.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState({
    @required CartSummary summary,
    @Default(<CartItem>[]) List<CartItem> items,
  }) = _CartState;
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
