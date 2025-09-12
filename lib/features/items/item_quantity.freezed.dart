// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_quantity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemQuantity {

 bool get hasStock; int get quantity;
/// Create a copy of ItemQuantity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemQuantityCopyWith<ItemQuantity> get copyWith => _$ItemQuantityCopyWithImpl<ItemQuantity>(this as ItemQuantity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemQuantity&&(identical(other.hasStock, hasStock) || other.hasStock == hasStock)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,hasStock,quantity);

@override
String toString() {
  return 'ItemQuantity(hasStock: $hasStock, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $ItemQuantityCopyWith<$Res>  {
  factory $ItemQuantityCopyWith(ItemQuantity value, $Res Function(ItemQuantity) _then) = _$ItemQuantityCopyWithImpl;
@useResult
$Res call({
 int quantity
});




}
/// @nodoc
class _$ItemQuantityCopyWithImpl<$Res>
    implements $ItemQuantityCopyWith<$Res> {
  _$ItemQuantityCopyWithImpl(this._self, this._then);

  final ItemQuantity _self;
  final $Res Function(ItemQuantity) _then;

/// Create a copy of ItemQuantity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quantity = null,}) {
  return _then(_self.copyWith(
quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemQuantity].
extension ItemQuantityPatterns on ItemQuantity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemQuantity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemQuantity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemQuantity value)  $default,){
final _that = this;
switch (_that) {
case _ItemQuantity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemQuantity value)?  $default,){
final _that = this;
switch (_that) {
case _ItemQuantity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemQuantity() when $default != null:
return $default(_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int quantity)  $default,) {final _that = this;
switch (_that) {
case _ItemQuantity():
return $default(_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int quantity)?  $default,) {final _that = this;
switch (_that) {
case _ItemQuantity() when $default != null:
return $default(_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _ItemQuantity extends ItemQuantity {
   _ItemQuantity(this.quantity): super._();
  

@override final  int quantity;

/// Create a copy of ItemQuantity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemQuantityCopyWith<_ItemQuantity> get copyWith => __$ItemQuantityCopyWithImpl<_ItemQuantity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemQuantity&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,quantity);

@override
String toString() {
  return 'ItemQuantity(quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$ItemQuantityCopyWith<$Res> implements $ItemQuantityCopyWith<$Res> {
  factory _$ItemQuantityCopyWith(_ItemQuantity value, $Res Function(_ItemQuantity) _then) = __$ItemQuantityCopyWithImpl;
@override @useResult
$Res call({
 int quantity
});




}
/// @nodoc
class __$ItemQuantityCopyWithImpl<$Res>
    implements _$ItemQuantityCopyWith<$Res> {
  __$ItemQuantityCopyWithImpl(this._self, this._then);

  final _ItemQuantity _self;
  final $Res Function(_ItemQuantity) _then;

/// Create a copy of ItemQuantity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quantity = null,}) {
  return _then(_ItemQuantity(
null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
