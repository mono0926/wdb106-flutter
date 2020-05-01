// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CartStateTearOff {
  const _$CartStateTearOff();

  _CartState call({Map<int, CartItem> itemMap = const <int, CartItem>{}}) {
    return _CartState(
      itemMap: itemMap,
    );
  }
}

// ignore: unused_element
const $CartState = _$CartStateTearOff();

mixin _$CartState {
  Map<int, CartItem> get itemMap;

  $CartStateCopyWith<CartState> get copyWith;
}

abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call({Map<int, CartItem> itemMap});
}

class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object itemMap = freezed,
  }) {
    return _then(_value.copyWith(
      itemMap:
          itemMap == freezed ? _value.itemMap : itemMap as Map<int, CartItem>,
    ));
  }
}

abstract class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(
          _CartState value, $Res Function(_CartState) then) =
      __$CartStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<int, CartItem> itemMap});
}

class __$CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(_CartState _value, $Res Function(_CartState) _then)
      : super(_value, (v) => _then(v as _CartState));

  @override
  _CartState get _value => super._value as _CartState;

  @override
  $Res call({
    Object itemMap = freezed,
  }) {
    return _then(_CartState(
      itemMap:
          itemMap == freezed ? _value.itemMap : itemMap as Map<int, CartItem>,
    ));
  }
}

class _$_CartState implements _CartState {
  _$_CartState({this.itemMap = const <int, CartItem>{}})
      : assert(itemMap != null);

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
  _$CartStateCopyWith<_CartState> get copyWith =>
      __$CartStateCopyWithImpl<_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  factory _CartState({Map<int, CartItem> itemMap}) = _$_CartState;

  @override
  Map<int, CartItem> get itemMap;
  @override
  _$CartStateCopyWith<_CartState> get copyWith;
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

// ignore: unused_element
const $CartSummary = _$CartSummaryTearOff();

mixin _$CartSummary {
  int get quantity;
  int get totalPrice;

  $CartSummaryCopyWith<CartSummary> get copyWith;
}

abstract class $CartSummaryCopyWith<$Res> {
  factory $CartSummaryCopyWith(
          CartSummary value, $Res Function(CartSummary) then) =
      _$CartSummaryCopyWithImpl<$Res>;
  $Res call({int quantity, int totalPrice});
}

class _$CartSummaryCopyWithImpl<$Res> implements $CartSummaryCopyWith<$Res> {
  _$CartSummaryCopyWithImpl(this._value, this._then);

  final CartSummary _value;
  // ignore: unused_field
  final $Res Function(CartSummary) _then;

  @override
  $Res call({
    Object quantity = freezed,
    Object totalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      totalPrice: totalPrice == freezed ? _value.totalPrice : totalPrice as int,
    ));
  }
}

abstract class _$CartSummaryCopyWith<$Res>
    implements $CartSummaryCopyWith<$Res> {
  factory _$CartSummaryCopyWith(
          _CartSummary value, $Res Function(_CartSummary) then) =
      __$CartSummaryCopyWithImpl<$Res>;
  @override
  $Res call({int quantity, int totalPrice});
}

class __$CartSummaryCopyWithImpl<$Res> extends _$CartSummaryCopyWithImpl<$Res>
    implements _$CartSummaryCopyWith<$Res> {
  __$CartSummaryCopyWithImpl(
      _CartSummary _value, $Res Function(_CartSummary) _then)
      : super(_value, (v) => _then(v as _CartSummary));

  @override
  _CartSummary get _value => super._value as _CartSummary;

  @override
  $Res call({
    Object quantity = freezed,
    Object totalPrice = freezed,
  }) {
    return _then(_CartSummary(
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      totalPrice: totalPrice == freezed ? _value.totalPrice : totalPrice as int,
    ));
  }
}

class _$_CartSummary implements _CartSummary {
  _$_CartSummary({this.quantity = 0, this.totalPrice = 0})
      : assert(quantity != null),
        assert(totalPrice != null);

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
  _$CartSummaryCopyWith<_CartSummary> get copyWith =>
      __$CartSummaryCopyWithImpl<_CartSummary>(this, _$identity);
}

abstract class _CartSummary implements CartSummary {
  factory _CartSummary({int quantity, int totalPrice}) = _$_CartSummary;

  @override
  int get quantity;
  @override
  int get totalPrice;
  @override
  _$CartSummaryCopyWith<_CartSummary> get copyWith;
}
