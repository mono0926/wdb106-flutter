// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_header.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartPrice {
  int get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartPriceCopyWith<CartPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPriceCopyWith<$Res> {
  factory $CartPriceCopyWith(CartPrice value, $Res Function(CartPrice) then) =
      _$CartPriceCopyWithImpl<$Res, CartPrice>;
  @useResult
  $Res call({int price});
}

/// @nodoc
class _$CartPriceCopyWithImpl<$Res, $Val extends CartPrice>
    implements $CartPriceCopyWith<$Res> {
  _$CartPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartPriceImplCopyWith<$Res>
    implements $CartPriceCopyWith<$Res> {
  factory _$$CartPriceImplCopyWith(
          _$CartPriceImpl value, $Res Function(_$CartPriceImpl) then) =
      __$$CartPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int price});
}

/// @nodoc
class __$$CartPriceImplCopyWithImpl<$Res>
    extends _$CartPriceCopyWithImpl<$Res, _$CartPriceImpl>
    implements _$$CartPriceImplCopyWith<$Res> {
  __$$CartPriceImplCopyWithImpl(
      _$CartPriceImpl _value, $Res Function(_$CartPriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$CartPriceImpl(
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CartPriceImpl extends _CartPrice {
  _$CartPriceImpl(this.price) : super._();

  @override
  final int price;

  @override
  String toString() {
    return 'CartPrice(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartPriceImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartPriceImplCopyWith<_$CartPriceImpl> get copyWith =>
      __$$CartPriceImplCopyWithImpl<_$CartPriceImpl>(this, _$identity);
}

abstract class _CartPrice extends CartPrice {
  factory _CartPrice(final int price) = _$CartPriceImpl;
  _CartPrice._() : super._();

  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$CartPriceImplCopyWith<_$CartPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
