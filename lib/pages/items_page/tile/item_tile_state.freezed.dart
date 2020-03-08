// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'item_tile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ItemTileState {
  int get quantity;

  ItemTileState copyWith({int quantity});
}

class _$ItemTileStateTearOff {
  const _$ItemTileStateTearOff();

  _ItemTileState call({int quantity = 0}) {
    return _ItemTileState(
      quantity: quantity,
    );
  }
}

const $ItemTileState = _$ItemTileStateTearOff();

class _$_ItemTileState implements _ItemTileState {
  _$_ItemTileState({this.quantity = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int quantity;
  bool _didhasStock = false;
  bool _hasStock;

  @override
  bool get hasStock {
    if (_didhasStock == false) {
      _didhasStock = true;
      _hasStock = quantity > 0;
    }
    return _hasStock;
  }

  @override
  String toString() {
    return 'ItemTileState(quantity: $quantity, hasStock: $hasStock)';
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

  @override
  _$_ItemTileState copyWith({
    Object quantity = freezed,
  }) {
    return _$_ItemTileState(
      quantity: quantity == freezed ? this.quantity : quantity as int,
    );
  }
}

abstract class _ItemTileState implements ItemTileState {
  factory _ItemTileState({int quantity}) = _$_ItemTileState;

  @override
  int get quantity;

  @override
  _ItemTileState copyWith({int quantity});
}
