// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_stocks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemStocks {

 Map<String, ItemStock> get map; dynamic get itemMap; List<String> get itemIds; List<ItemStock> get stocks;
/// Create a copy of ItemStocks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemStocksCopyWith<ItemStocks> get copyWith => _$ItemStocksCopyWithImpl<ItemStocks>(this as ItemStocks, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemStocks&&const DeepCollectionEquality().equals(other.map, map)&&const DeepCollectionEquality().equals(other.itemMap, itemMap)&&const DeepCollectionEquality().equals(other.itemIds, itemIds)&&const DeepCollectionEquality().equals(other.stocks, stocks));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(map),const DeepCollectionEquality().hash(itemMap),const DeepCollectionEquality().hash(itemIds),const DeepCollectionEquality().hash(stocks));

@override
String toString() {
  return 'ItemStocks(map: $map, itemMap: $itemMap, itemIds: $itemIds, stocks: $stocks)';
}


}

/// @nodoc
abstract mixin class $ItemStocksCopyWith<$Res>  {
  factory $ItemStocksCopyWith(ItemStocks value, $Res Function(ItemStocks) _then) = _$ItemStocksCopyWithImpl;
@useResult
$Res call({
 List<ItemStock> stocks
});




}
/// @nodoc
class _$ItemStocksCopyWithImpl<$Res>
    implements $ItemStocksCopyWith<$Res> {
  _$ItemStocksCopyWithImpl(this._self, this._then);

  final ItemStocks _self;
  final $Res Function(ItemStocks) _then;

/// Create a copy of ItemStocks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stocks = null,}) {
  return _then(_self.copyWith(
stocks: null == stocks ? _self.stocks : stocks // ignore: cast_nullable_to_non_nullable
as List<ItemStock>,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemStocks].
extension ItemStocksPatterns on ItemStocks {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemStocks value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemStocks() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemStocks value)  $default,){
final _that = this;
switch (_that) {
case _ItemStocks():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemStocks value)?  $default,){
final _that = this;
switch (_that) {
case _ItemStocks() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ItemStock> stocks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemStocks() when $default != null:
return $default(_that.stocks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ItemStock> stocks)  $default,) {final _that = this;
switch (_that) {
case _ItemStocks():
return $default(_that.stocks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ItemStock> stocks)?  $default,) {final _that = this;
switch (_that) {
case _ItemStocks() when $default != null:
return $default(_that.stocks);case _:
  return null;

}
}

}

/// @nodoc


class _ItemStocks extends ItemStocks {
   _ItemStocks({required final  List<ItemStock> stocks}): _stocks = stocks,super._();
  

 final  List<ItemStock> _stocks;
@override List<ItemStock> get stocks {
  if (_stocks is EqualUnmodifiableListView) return _stocks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stocks);
}


/// Create a copy of ItemStocks
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemStocksCopyWith<_ItemStocks> get copyWith => __$ItemStocksCopyWithImpl<_ItemStocks>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemStocks&&const DeepCollectionEquality().equals(other._stocks, _stocks));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_stocks));

@override
String toString() {
  return 'ItemStocks(stocks: $stocks)';
}


}

/// @nodoc
abstract mixin class _$ItemStocksCopyWith<$Res> implements $ItemStocksCopyWith<$Res> {
  factory _$ItemStocksCopyWith(_ItemStocks value, $Res Function(_ItemStocks) _then) = __$ItemStocksCopyWithImpl;
@override @useResult
$Res call({
 List<ItemStock> stocks
});




}
/// @nodoc
class __$ItemStocksCopyWithImpl<$Res>
    implements _$ItemStocksCopyWith<$Res> {
  __$ItemStocksCopyWithImpl(this._self, this._then);

  final _ItemStocks _self;
  final $Res Function(_ItemStocks) _then;

/// Create a copy of ItemStocks
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stocks = null,}) {
  return _then(_ItemStocks(
stocks: null == stocks ? _self._stocks : stocks // ignore: cast_nullable_to_non_nullable
as List<ItemStock>,
  ));
}


}

/// @nodoc
mixin _$ItemStock {

 Item get item; int get quantity;
/// Create a copy of ItemStock
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemStockCopyWith<ItemStock> get copyWith => _$ItemStockCopyWithImpl<ItemStock>(this as ItemStock, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemStock&&(identical(other.item, item) || other.item == item)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,item,quantity);

@override
String toString() {
  return 'ItemStock(item: $item, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $ItemStockCopyWith<$Res>  {
  factory $ItemStockCopyWith(ItemStock value, $Res Function(ItemStock) _then) = _$ItemStockCopyWithImpl;
@useResult
$Res call({
 Item item, int quantity
});


$ItemCopyWith<$Res> get item;

}
/// @nodoc
class _$ItemStockCopyWithImpl<$Res>
    implements $ItemStockCopyWith<$Res> {
  _$ItemStockCopyWithImpl(this._self, this._then);

  final ItemStock _self;
  final $Res Function(ItemStock) _then;

/// Create a copy of ItemStock
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as Item,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of ItemStock
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemCopyWith<$Res> get item {
  
  return $ItemCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}


/// Adds pattern-matching-related methods to [ItemStock].
extension ItemStockPatterns on ItemStock {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemStock value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemStock() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemStock value)  $default,){
final _that = this;
switch (_that) {
case _ItemStock():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemStock value)?  $default,){
final _that = this;
switch (_that) {
case _ItemStock() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Item item,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemStock() when $default != null:
return $default(_that.item,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Item item,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _ItemStock():
return $default(_that.item,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Item item,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _ItemStock() when $default != null:
return $default(_that.item,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _ItemStock extends ItemStock {
   _ItemStock({required this.item, required this.quantity}): super._();
  

@override final  Item item;
@override final  int quantity;

/// Create a copy of ItemStock
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemStockCopyWith<_ItemStock> get copyWith => __$ItemStockCopyWithImpl<_ItemStock>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemStock&&(identical(other.item, item) || other.item == item)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,item,quantity);

@override
String toString() {
  return 'ItemStock(item: $item, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$ItemStockCopyWith<$Res> implements $ItemStockCopyWith<$Res> {
  factory _$ItemStockCopyWith(_ItemStock value, $Res Function(_ItemStock) _then) = __$ItemStockCopyWithImpl;
@override @useResult
$Res call({
 Item item, int quantity
});


@override $ItemCopyWith<$Res> get item;

}
/// @nodoc
class __$ItemStockCopyWithImpl<$Res>
    implements _$ItemStockCopyWith<$Res> {
  __$ItemStockCopyWithImpl(this._self, this._then);

  final _ItemStock _self;
  final $Res Function(_ItemStock) _then;

/// Create a copy of ItemStock
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,Object? quantity = null,}) {
  return _then(_ItemStock(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as Item,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ItemStock
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemCopyWith<$Res> get item {
  
  return $ItemCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}


/// @nodoc
mixin _$Item {

 String get priceLabel; String get id; int get price; String get title; String get imageUrl;
/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemCopyWith<Item> get copyWith => _$ItemCopyWithImpl<Item>(this as Item, _$identity);

  /// Serializes this Item to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Item&&(identical(other.priceLabel, priceLabel) || other.priceLabel == priceLabel)&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,priceLabel,id,price,title,imageUrl);

@override
String toString() {
  return 'Item(priceLabel: $priceLabel, id: $id, price: $price, title: $title, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $ItemCopyWith<$Res>  {
  factory $ItemCopyWith(Item value, $Res Function(Item) _then) = _$ItemCopyWithImpl;
@useResult
$Res call({
 String id, int price, String title, String imageUrl
});




}
/// @nodoc
class _$ItemCopyWithImpl<$Res>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._self, this._then);

  final Item _self;
  final $Res Function(Item) _then;

/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? price = null,Object? title = null,Object? imageUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Item].
extension ItemPatterns on Item {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Item value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Item() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Item value)  $default,){
final _that = this;
switch (_that) {
case _Item():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Item value)?  $default,){
final _that = this;
switch (_that) {
case _Item() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int price,  String title,  String imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Item() when $default != null:
return $default(_that.id,_that.price,_that.title,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int price,  String title,  String imageUrl)  $default,) {final _that = this;
switch (_that) {
case _Item():
return $default(_that.id,_that.price,_that.title,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int price,  String title,  String imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _Item() when $default != null:
return $default(_that.id,_that.price,_that.title,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Item extends Item {
   _Item({required this.id, required this.price, required this.title, required this.imageUrl}): super._();
  factory _Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

@override final  String id;
@override final  int price;
@override final  String title;
@override final  String imageUrl;

/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemCopyWith<_Item> get copyWith => __$ItemCopyWithImpl<_Item>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Item&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,price,title,imageUrl);

@override
String toString() {
  return 'Item(id: $id, price: $price, title: $title, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) _then) = __$ItemCopyWithImpl;
@override @useResult
$Res call({
 String id, int price, String title, String imageUrl
});




}
/// @nodoc
class __$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(this._self, this._then);

  final _Item _self;
  final $Res Function(_Item) _then;

/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? price = null,Object? title = null,Object? imageUrl = null,}) {
  return _then(_Item(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
