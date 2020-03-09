// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'item_stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ItemStock {
  Item get item;
  int get quantity;

  ItemStock copyWith({Item item, int quantity});
}

class _$ItemStockTearOff {
  const _$ItemStockTearOff();

  _ItemStock call({@required Item item, @required int quantity}) {
    return _ItemStock(
      item: item,
      quantity: quantity,
    );
  }
}

const $ItemStock = _$ItemStockTearOff();

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
  _$_ItemStock copyWith({
    Object item = freezed,
    Object quantity = freezed,
  }) {
    return _$_ItemStock(
      item: item == freezed ? this.item : item as Item,
      quantity: quantity == freezed ? this.quantity : quantity as int,
    );
  }
}

abstract class _ItemStock implements ItemStock {
  const factory _ItemStock({@required Item item, @required int quantity}) =
      _$_ItemStock;

  @override
  Item get item;
  @override
  int get quantity;

  @override
  _ItemStock copyWith({Item item, int quantity});
}
