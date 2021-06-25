// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _CartState call({Map<int, CartItem> itemMap = const <int, CartItem>{}}) {
    return _CartState(
      itemMap: itemMap,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  Map<int, CartItem> get itemMap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call({Map<int, CartItem> itemMap});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? itemMap = freezed,
  }) {
    return _then(_value.copyWith(
      itemMap: itemMap == freezed
          ? _value.itemMap
          : itemMap // ignore: cast_nullable_to_non_nullable
              as Map<int, CartItem>,
    ));
  }
}

/// @nodoc
abstract class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(
          _CartState value, $Res Function(_CartState) then) =
      __$CartStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<int, CartItem> itemMap});
}

/// @nodoc
class __$CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(_CartState _value, $Res Function(_CartState) _then)
      : super(_value, (v) => _then(v as _CartState));

  @override
  _CartState get _value => super._value as _CartState;

  @override
  $Res call({
    Object? itemMap = freezed,
  }) {
    return _then(_CartState(
      itemMap: itemMap == freezed
          ? _value.itemMap
          : itemMap // ignore: cast_nullable_to_non_nullable
              as Map<int, CartItem>,
    ));
  }
}

/// @nodoc

class _$_CartState extends _CartState {
  _$_CartState({this.itemMap = const <int, CartItem>{}}) : super._();

  @JsonKey(defaultValue: const <int, CartItem>{})
  @override
  final Map<int, CartItem> itemMap;

  @override
  String toString() {
    return 'CartState(itemMap: $itemMap)';
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

  @JsonKey(ignore: true)
  @override
  _$CartStateCopyWith<_CartState> get copyWith =>
      __$CartStateCopyWithImpl<_CartState>(this, _$identity);
}

abstract class _CartState extends CartState {
  factory _CartState({Map<int, CartItem> itemMap}) = _$_CartState;
  _CartState._() : super._();

  @override
  Map<int, CartItem> get itemMap => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartStateCopyWith<_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CartSummaryTearOff {
  const _$CartSummaryTearOff();

  _CartSummary call({int quantity = 0, int totalPrice = 0}) {
    return _CartSummary(
      quantity: quantity,
      totalPrice: totalPrice,
    );
  }
}

/// @nodoc
const $CartSummary = _$CartSummaryTearOff();

/// @nodoc
mixin _$CartSummary {
  int get quantity => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartSummaryCopyWith<CartSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartSummaryCopyWith<$Res> {
  factory $CartSummaryCopyWith(
          CartSummary value, $Res Function(CartSummary) then) =
      _$CartSummaryCopyWithImpl<$Res>;
  $Res call({int quantity, int totalPrice});
}

/// @nodoc
class _$CartSummaryCopyWithImpl<$Res> implements $CartSummaryCopyWith<$Res> {
  _$CartSummaryCopyWithImpl(this._value, this._then);

  final CartSummary _value;
  // ignore: unused_field
  final $Res Function(CartSummary) _then;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CartSummaryCopyWith<$Res>
    implements $CartSummaryCopyWith<$Res> {
  factory _$CartSummaryCopyWith(
          _CartSummary value, $Res Function(_CartSummary) then) =
      __$CartSummaryCopyWithImpl<$Res>;
  @override
  $Res call({int quantity, int totalPrice});
}

/// @nodoc
class __$CartSummaryCopyWithImpl<$Res> extends _$CartSummaryCopyWithImpl<$Res>
    implements _$CartSummaryCopyWith<$Res> {
  __$CartSummaryCopyWithImpl(
      _CartSummary _value, $Res Function(_CartSummary) _then)
      : super(_value, (v) => _then(v as _CartSummary));

  @override
  _CartSummary get _value => super._value as _CartSummary;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_CartSummary(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CartSummary extends _CartSummary {
  _$_CartSummary({this.quantity = 0, this.totalPrice = 0}) : super._();

  @JsonKey(defaultValue: 0)
  @override
  final int quantity;
  @JsonKey(defaultValue: 0)
  @override
  final int totalPrice;

  @override
  String toString() {
    return 'CartSummary(quantity: $quantity, totalPrice: $totalPrice)';
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

  @JsonKey(ignore: true)
  @override
  _$CartSummaryCopyWith<_CartSummary> get copyWith =>
      __$CartSummaryCopyWithImpl<_CartSummary>(this, _$identity);
}

abstract class _CartSummary extends CartSummary {
  factory _CartSummary({int quantity, int totalPrice}) = _$_CartSummary;
  _CartSummary._() : super._();

  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  int get totalPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartSummaryCopyWith<_CartSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
