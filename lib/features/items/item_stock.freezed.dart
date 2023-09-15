// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemStock {
  Item get item => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemStockCopyWith<ItemStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemStockCopyWith<$Res> {
  factory $ItemStockCopyWith(ItemStock value, $Res Function(ItemStock) then) =
      _$ItemStockCopyWithImpl<$Res, ItemStock>;
  @useResult
  $Res call({Item item, int quantity});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class _$ItemStockCopyWithImpl<$Res, $Val extends ItemStock>
    implements $ItemStockCopyWith<$Res> {
  _$ItemStockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemStockCopyWith<$Res> implements $ItemStockCopyWith<$Res> {
  factory _$$_ItemStockCopyWith(
          _$_ItemStock value, $Res Function(_$_ItemStock) then) =
      __$$_ItemStockCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Item item, int quantity});

  @override
  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$_ItemStockCopyWithImpl<$Res>
    extends _$ItemStockCopyWithImpl<$Res, _$_ItemStock>
    implements _$$_ItemStockCopyWith<$Res> {
  __$$_ItemStockCopyWithImpl(
      _$_ItemStock _value, $Res Function(_$_ItemStock) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? quantity = null,
  }) {
    return _then(_$_ItemStock(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ItemStock extends _ItemStock with DiagnosticableTreeMixin {
  _$_ItemStock({required this.item, required this.quantity}) : super._();

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
        (other.runtimeType == runtimeType &&
            other is _$_ItemStock &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemStockCopyWith<_$_ItemStock> get copyWith =>
      __$$_ItemStockCopyWithImpl<_$_ItemStock>(this, _$identity);
}

abstract class _ItemStock extends ItemStock {
  factory _ItemStock({required final Item item, required final int quantity}) =
      _$_ItemStock;
  _ItemStock._() : super._();

  @override
  Item get item;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_ItemStockCopyWith<_$_ItemStock> get copyWith =>
      throw _privateConstructorUsedError;
}
