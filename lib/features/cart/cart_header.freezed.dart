// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_header.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartPrice {

 String get label; int get price;
/// Create a copy of CartPrice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartPriceCopyWith<CartPrice> get copyWith => _$CartPriceCopyWithImpl<CartPrice>(this as CartPrice, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartPrice&&(identical(other.label, label) || other.label == label)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,label,price);

@override
String toString() {
  return 'CartPrice(label: $label, price: $price)';
}


}

/// @nodoc
abstract mixin class $CartPriceCopyWith<$Res>  {
  factory $CartPriceCopyWith(CartPrice value, $Res Function(CartPrice) _then) = _$CartPriceCopyWithImpl;
@useResult
$Res call({
 int price
});




}
/// @nodoc
class _$CartPriceCopyWithImpl<$Res>
    implements $CartPriceCopyWith<$Res> {
  _$CartPriceCopyWithImpl(this._self, this._then);

  final CartPrice _self;
  final $Res Function(CartPrice) _then;

/// Create a copy of CartPrice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? price = null,}) {
  return _then(_self.copyWith(
price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CartPrice].
extension CartPricePatterns on CartPrice {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartPrice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartPrice() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartPrice value)  $default,){
final _that = this;
switch (_that) {
case _CartPrice():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartPrice value)?  $default,){
final _that = this;
switch (_that) {
case _CartPrice() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartPrice() when $default != null:
return $default(_that.price);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int price)  $default,) {final _that = this;
switch (_that) {
case _CartPrice():
return $default(_that.price);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int price)?  $default,) {final _that = this;
switch (_that) {
case _CartPrice() when $default != null:
return $default(_that.price);case _:
  return null;

}
}

}

/// @nodoc


class _CartPrice extends CartPrice {
   _CartPrice(this.price): super._();
  

@override final  int price;

/// Create a copy of CartPrice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartPriceCopyWith<_CartPrice> get copyWith => __$CartPriceCopyWithImpl<_CartPrice>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartPrice&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,price);

@override
String toString() {
  return 'CartPrice(price: $price)';
}


}

/// @nodoc
abstract mixin class _$CartPriceCopyWith<$Res> implements $CartPriceCopyWith<$Res> {
  factory _$CartPriceCopyWith(_CartPrice value, $Res Function(_CartPrice) _then) = __$CartPriceCopyWithImpl;
@override @useResult
$Res call({
 int price
});




}
/// @nodoc
class __$CartPriceCopyWithImpl<$Res>
    implements _$CartPriceCopyWith<$Res> {
  __$CartPriceCopyWithImpl(this._self, this._then);

  final _CartPrice _self;
  final $Res Function(_CartPrice) _then;

/// Create a copy of CartPrice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? price = null,}) {
  return _then(_CartPrice(
null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
