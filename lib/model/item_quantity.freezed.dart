// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_quantity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemQuantity {
  int get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemQuantityCopyWith<ItemQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemQuantityCopyWith<$Res> {
  factory $ItemQuantityCopyWith(
          ItemQuantity value, $Res Function(ItemQuantity) then) =
      _$ItemQuantityCopyWithImpl<$Res>;
  $Res call({int quantity});
}

/// @nodoc
class _$ItemQuantityCopyWithImpl<$Res> implements $ItemQuantityCopyWith<$Res> {
  _$ItemQuantityCopyWithImpl(this._value, this._then);

  final ItemQuantity _value;
  // ignore: unused_field
  final $Res Function(ItemQuantity) _then;

  @override
  $Res call({
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemQuantityCopyWith<$Res>
    implements $ItemQuantityCopyWith<$Res> {
  factory _$$_ItemQuantityCopyWith(
          _$_ItemQuantity value, $Res Function(_$_ItemQuantity) then) =
      __$$_ItemQuantityCopyWithImpl<$Res>;
  @override
  $Res call({int quantity});
}

/// @nodoc
class __$$_ItemQuantityCopyWithImpl<$Res>
    extends _$ItemQuantityCopyWithImpl<$Res>
    implements _$$_ItemQuantityCopyWith<$Res> {
  __$$_ItemQuantityCopyWithImpl(
      _$_ItemQuantity _value, $Res Function(_$_ItemQuantity) _then)
      : super(_value, (v) => _then(v as _$_ItemQuantity));

  @override
  _$_ItemQuantity get _value => super._value as _$_ItemQuantity;

  @override
  $Res call({
    Object? quantity = freezed,
  }) {
    return _then(_$_ItemQuantity(
      quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ItemQuantity extends _ItemQuantity {
  _$_ItemQuantity(this.quantity) : super._();

  @override
  final int quantity;

  @override
  String toString() {
    return 'ItemQuantity(quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemQuantity &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$$_ItemQuantityCopyWith<_$_ItemQuantity> get copyWith =>
      __$$_ItemQuantityCopyWithImpl<_$_ItemQuantity>(this, _$identity);
}

abstract class _ItemQuantity extends ItemQuantity {
  factory _ItemQuantity(final int quantity) = _$_ItemQuantity;
  _ItemQuantity._() : super._();

  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_ItemQuantityCopyWith<_$_ItemQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}
