// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_stocks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ItemStocks {
  List<ItemStock> get stocks => throw _privateConstructorUsedError;

  /// Create a copy of ItemStocks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemStocksCopyWith<ItemStocks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemStocksCopyWith<$Res> {
  factory $ItemStocksCopyWith(
          ItemStocks value, $Res Function(ItemStocks) then) =
      _$ItemStocksCopyWithImpl<$Res, ItemStocks>;
  @useResult
  $Res call({List<ItemStock> stocks});
}

/// @nodoc
class _$ItemStocksCopyWithImpl<$Res, $Val extends ItemStocks>
    implements $ItemStocksCopyWith<$Res> {
  _$ItemStocksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemStocks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stocks = null,
  }) {
    return _then(_value.copyWith(
      stocks: null == stocks
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<ItemStock>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemStocksImplCopyWith<$Res>
    implements $ItemStocksCopyWith<$Res> {
  factory _$$ItemStocksImplCopyWith(
          _$ItemStocksImpl value, $Res Function(_$ItemStocksImpl) then) =
      __$$ItemStocksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ItemStock> stocks});
}

/// @nodoc
class __$$ItemStocksImplCopyWithImpl<$Res>
    extends _$ItemStocksCopyWithImpl<$Res, _$ItemStocksImpl>
    implements _$$ItemStocksImplCopyWith<$Res> {
  __$$ItemStocksImplCopyWithImpl(
      _$ItemStocksImpl _value, $Res Function(_$ItemStocksImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemStocks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stocks = null,
  }) {
    return _then(_$ItemStocksImpl(
      stocks: null == stocks
          ? _value._stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<ItemStock>,
    ));
  }
}

/// @nodoc

class _$ItemStocksImpl extends _ItemStocks {
  _$ItemStocksImpl({required final List<ItemStock> stocks})
      : _stocks = stocks,
        super._();

  final List<ItemStock> _stocks;
  @override
  List<ItemStock> get stocks {
    if (_stocks is EqualUnmodifiableListView) return _stocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stocks);
  }

  @override
  String toString() {
    return 'ItemStocks(stocks: $stocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemStocksImpl &&
            const DeepCollectionEquality().equals(other._stocks, _stocks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stocks));

  /// Create a copy of ItemStocks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemStocksImplCopyWith<_$ItemStocksImpl> get copyWith =>
      __$$ItemStocksImplCopyWithImpl<_$ItemStocksImpl>(this, _$identity);
}

abstract class _ItemStocks extends ItemStocks {
  factory _ItemStocks({required final List<ItemStock> stocks}) =
      _$ItemStocksImpl;
  _ItemStocks._() : super._();

  @override
  List<ItemStock> get stocks;

  /// Create a copy of ItemStocks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemStocksImplCopyWith<_$ItemStocksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemStock {
  Item get item => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  /// Create a copy of ItemStock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ItemStock
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ItemStock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemStockImplCopyWith<$Res>
    implements $ItemStockCopyWith<$Res> {
  factory _$$ItemStockImplCopyWith(
          _$ItemStockImpl value, $Res Function(_$ItemStockImpl) then) =
      __$$ItemStockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Item item, int quantity});

  @override
  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$ItemStockImplCopyWithImpl<$Res>
    extends _$ItemStockCopyWithImpl<$Res, _$ItemStockImpl>
    implements _$$ItemStockImplCopyWith<$Res> {
  __$$ItemStockImplCopyWithImpl(
      _$ItemStockImpl _value, $Res Function(_$ItemStockImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemStock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? quantity = null,
  }) {
    return _then(_$ItemStockImpl(
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

class _$ItemStockImpl extends _ItemStock {
  _$ItemStockImpl({required this.item, required this.quantity}) : super._();

  @override
  final Item item;
  @override
  final int quantity;

  @override
  String toString() {
    return 'ItemStock(item: $item, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemStockImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, quantity);

  /// Create a copy of ItemStock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemStockImplCopyWith<_$ItemStockImpl> get copyWith =>
      __$$ItemStockImplCopyWithImpl<_$ItemStockImpl>(this, _$identity);
}

abstract class _ItemStock extends ItemStock {
  factory _ItemStock({required final Item item, required final int quantity}) =
      _$ItemStockImpl;
  _ItemStock._() : super._();

  @override
  Item get item;
  @override
  int get quantity;

  /// Create a copy of ItemStock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemStockImplCopyWith<_$ItemStockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get id => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this Item to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call({String id, int price, String title, String imageUrl});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? title = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int price, String title, String imageUrl});
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? title = null,
    Object? imageUrl = null,
  }) {
    return _then(_$ItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl extends _Item {
  _$ItemImpl(
      {required this.id,
      required this.price,
      required this.title,
      required this.imageUrl})
      : super._();

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final String id;
  @override
  final int price;
  @override
  final String title;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'Item(id: $id, price: $price, title: $title, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, price, title, imageUrl);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item extends Item {
  factory _Item(
      {required final String id,
      required final int price,
      required final String title,
      required final String imageUrl}) = _$ItemImpl;
  _Item._() : super._();

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  String get id;
  @override
  int get price;
  @override
  String get title;
  @override
  String get imageUrl;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
