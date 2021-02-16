// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_tile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemTileStateTearOff {
  const _$ItemTileStateTearOff();

  _ItemTileState call({int quantity = 0}) {
    return _ItemTileState(
      quantity: quantity,
    );
  }
}

/// @nodoc
const $ItemTileState = _$ItemTileStateTearOff();

/// @nodoc
mixin _$ItemTileState {
  int get quantity;

  @JsonKey(ignore: true)
  $ItemTileStateCopyWith<ItemTileState> get copyWith;
}

/// @nodoc
abstract class $ItemTileStateCopyWith<$Res> {
  factory $ItemTileStateCopyWith(
          ItemTileState value, $Res Function(ItemTileState) then) =
      _$ItemTileStateCopyWithImpl<$Res>;
  $Res call({int quantity});
}

/// @nodoc
class _$ItemTileStateCopyWithImpl<$Res>
    implements $ItemTileStateCopyWith<$Res> {
  _$ItemTileStateCopyWithImpl(this._value, this._then);

  final ItemTileState _value;
  // ignore: unused_field
  final $Res Function(ItemTileState) _then;

  @override
  $Res call({
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed ? _value.quantity : quantity as int,
    ));
  }
}

/// @nodoc
abstract class _$ItemTileStateCopyWith<$Res>
    implements $ItemTileStateCopyWith<$Res> {
  factory _$ItemTileStateCopyWith(
          _ItemTileState value, $Res Function(_ItemTileState) then) =
      __$ItemTileStateCopyWithImpl<$Res>;
  @override
  $Res call({int quantity});
}

/// @nodoc
class __$ItemTileStateCopyWithImpl<$Res>
    extends _$ItemTileStateCopyWithImpl<$Res>
    implements _$ItemTileStateCopyWith<$Res> {
  __$ItemTileStateCopyWithImpl(
      _ItemTileState _value, $Res Function(_ItemTileState) _then)
      : super(_value, (v) => _then(v as _ItemTileState));

  @override
  _ItemTileState get _value => super._value as _ItemTileState;

  @override
  $Res call({
    Object? quantity = freezed,
  }) {
    return _then(_ItemTileState(
      quantity: quantity == freezed ? _value.quantity : quantity as int,
    ));
  }
}

/// @nodoc
class _$_ItemTileState extends _ItemTileState {
  _$_ItemTileState({this.quantity = 0}) : super._();

  @JsonKey(defaultValue: 0)
  @override
  final int quantity;

  @override
  String toString() {
    return 'ItemTileState(quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemTileState &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quantity);

  @JsonKey(ignore: true)
  @override
  _$ItemTileStateCopyWith<_ItemTileState> get copyWith =>
      __$ItemTileStateCopyWithImpl<_ItemTileState>(this, _$identity);
}

abstract class _ItemTileState extends ItemTileState {
  _ItemTileState._() : super._();
  factory _ItemTileState({int quantity}) = _$_ItemTileState;

  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$ItemTileStateCopyWith<_ItemTileState> get copyWith;
}
