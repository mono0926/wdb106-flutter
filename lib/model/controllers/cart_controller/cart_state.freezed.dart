// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$CartState {
  CartSummary get summary;
  List<CartItem> get items;

  CartState copyWith({CartSummary summary, List<CartItem> items});
}

class _$CartStateTearOff {
  const _$CartStateTearOff();

  _CartState call(
      {@required CartSummary summary,
      List<CartItem> items = const <CartItem>[]}) {
    return _CartState(
      summary: summary,
      items: items,
    );
  }
}

const $CartState = _$CartStateTearOff();

class _$_CartState implements _CartState {
  const _$_CartState({@required this.summary, this.items = const <CartItem>[]})
      : assert(summary != null);

  @override
  final CartSummary summary;
  @JsonKey(defaultValue: const <CartItem>[])
  @override
  final List<CartItem> items;

  @override
  String toString() {
    return 'CartState(summary: $summary, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartState &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(items);

  @override
  _$_CartState copyWith({
    Object summary = freezed,
    Object items = freezed,
  }) {
    return _$_CartState(
      summary: summary == freezed ? this.summary : summary as CartSummary,
      items: items == freezed ? this.items : items as List<CartItem>,
    );
  }
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {@required CartSummary summary, List<CartItem> items}) = _$_CartState;

  @override
  CartSummary get summary;
  @override
  List<CartItem> get items;

  @override
  _CartState copyWith({CartSummary summary, List<CartItem> items});
}

mixin _$CartSummary {
  int get quantity;
  int get totalPrice;

  CartSummary copyWith({int quantity, int totalPrice});
}

class _$CartSummaryTearOff {
  const _$CartSummaryTearOff();

  _CartSummary call({int quantity = 0, int totalPrice = 0}) {
    return _CartSummary(
      quantity: quantity,
      totalPrice: totalPrice,
    );
  }
}

const $CartSummary = _$CartSummaryTearOff();

class _$_CartSummary implements _CartSummary {
  _$_CartSummary({this.quantity = 0, this.totalPrice = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int quantity;
  @JsonKey(defaultValue: 0)
  @override
  final int totalPrice;
  bool _didstate = false;
  String _state;

  @override
  String get state {
    if (_didstate == false) {
      _didstate = true;
      _state = 'カート($quantity)';
    }
    return _state;
  }

  bool _didtotalPriceState = false;
  String _totalPriceState;

  @override
  String get totalPriceState {
    if (_didtotalPriceState == false) {
      _didtotalPriceState = true;
      _totalPriceState = '合計金額 $totalPrice円+税';
    }
    return _totalPriceState;
  }

  @override
  String toString() {
    return 'CartSummary(quantity: $quantity, totalPrice: $totalPrice, state: $state, totalPriceState: $totalPriceState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartSummary &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.totalPrice, totalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(totalPrice);

  @override
  _$_CartSummary copyWith({
    Object quantity = freezed,
    Object totalPrice = freezed,
  }) {
    return _$_CartSummary(
      quantity: quantity == freezed ? this.quantity : quantity as int,
      totalPrice: totalPrice == freezed ? this.totalPrice : totalPrice as int,
    );
  }
}

abstract class _CartSummary implements CartSummary {
  factory _CartSummary({int quantity, int totalPrice}) = _$_CartSummary;

  @override
  int get quantity;
  @override
  int get totalPrice;

  @override
  _CartSummary copyWith({int quantity, int totalPrice});
}
