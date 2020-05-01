// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'item_stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ItemStockTearOff {
  const _$ItemStockTearOff();

  _ItemStock call({@required Item item, @required int quantity}) {
    return _ItemStock(
      item: item,
      quantity: quantity,
    );
  }
}

// ignore: unused_element
const $ItemStock = _$ItemStockTearOff();

mixin _$ItemStock {
  Item get item;
  int get quantity;

  $ItemStockCopyWith<ItemStock> get copyWith;
}

abstract class $ItemStockCopyWith<$Res> {
  factory $ItemStockCopyWith(ItemStock value, $Res Function(ItemStock) then) =
      _$ItemStockCopyWithImpl<$Res>;
  $Res call({Item item, int quantity});

  $ItemCopyWith<$Res> get item;
}

class _$ItemStockCopyWithImpl<$Res> implements $ItemStockCopyWith<$Res> {
  _$ItemStockCopyWithImpl(this._value, this._then);

  final ItemStock _value;
  // ignore: unused_field
  final $Res Function(ItemStock) _then;

  @override
  $Res call({
    Object item = freezed,
    Object quantity = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed ? _value.item : item as Item,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    if (_value.item == null) {
      return null;
    }
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

abstract class _$ItemStockCopyWith<$Res> implements $ItemStockCopyWith<$Res> {
  factory _$ItemStockCopyWith(
          _ItemStock value, $Res Function(_ItemStock) then) =
      __$ItemStockCopyWithImpl<$Res>;
  @override
  $Res call({Item item, int quantity});

  @override
  $ItemCopyWith<$Res> get item;
}

class __$ItemStockCopyWithImpl<$Res> extends _$ItemStockCopyWithImpl<$Res>
    implements _$ItemStockCopyWith<$Res> {
  __$ItemStockCopyWithImpl(_ItemStock _value, $Res Function(_ItemStock) _then)
      : super(_value, (v) => _then(v as _ItemStock));

  @override
  _ItemStock get _value => super._value as _ItemStock;

  @override
  $Res call({
    Object item = freezed,
    Object quantity = freezed,
  }) {
    return _then(_ItemStock(
      item: item == freezed ? _value.item : item as Item,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
    ));
  }
}

class _$_ItemStock with DiagnosticableTreeMixin implements _ItemStock {
  const _$_ItemStock({@required this.item, @required this.quantity})
      : assert(item != null),
        assert(quantity != null);

  @override
  final Item item;
  @override
  final int quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemStock(item: $item, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemStock'))
      ..add(DiagnosticsProperty('item', item))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemStock &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(item) ^
      const DeepCollectionEquality().hash(quantity);

  @override
  _$ItemStockCopyWith<_ItemStock> get copyWith =>
      __$ItemStockCopyWithImpl<_ItemStock>(this, _$identity);
}

abstract class _ItemStock implements ItemStock {
  const factory _ItemStock({@required Item item, @required int quantity}) =
      _$_ItemStock;

  @override
  Item get item;
  @override
  int get quantity;
  @override
  _$ItemStockCopyWith<_ItemStock> get copyWith;
}
