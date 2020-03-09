// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$CartState {
  Map<int, CartItem> get itemMap;

  CartState copyWith({Map<int, CartItem> itemMap});
}

class _$CartStateTearOff {
  const _$CartStateTearOff();

  _CartState call({Map<int, CartItem> itemMap = const <int, CartItem>{}}) {
    return _CartState(
      itemMap: itemMap,
    );
  }
}

const $CartState = _$CartStateTearOff();

class _$_CartState implements _CartState {
  _$_CartState({this.itemMap = const <int, CartItem>{}});

  @JsonKey(defaultValue: const <int, CartItem>{})
  @override
  final Map<int, CartItem> itemMap;
  bool _didsortedItems = false;
  List<CartItem> _sortedItems;

  @override
  List<CartItem> get sortedItems {
    if (_didsortedItems == false) {
      _didsortedItems = true;
      _sortedItems = itemMap.values.toList()
        ..sort((a, b) => a.item.id.compareTo(b.item.id));
    }
    return _sortedItems;
  }

  bool _didsummary = false;
  CartSummary _summary;

  @override
  CartSummary get summary {
    if (_didsummary == false) {
      _didsummary = true;
      _summary = CartSummary(
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
    return _summary;
  }

  @override
  String toString() {
    return 'CartState(itemMap: $itemMap, sortedItems: $sortedItems, summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartState &&
            (identical(other.itemMap, itemMap) ||
                const DeepCollectionEquality().equals(other.itemMap, itemMap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemMap);

  @override
  _$_CartState copyWith({
    Object itemMap = freezed,
  }) {
    return _$_CartState(
      itemMap:
          itemMap == freezed ? this.itemMap : itemMap as Map<int, CartItem>,
    );
  }
}

abstract class _CartState implements CartState {
  factory _CartState({Map<int, CartItem> itemMap}) = _$_CartState;

  @override
  Map<int, CartItem> get itemMap;

  @override
  _CartState copyWith({Map<int, CartItem> itemMap});
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
