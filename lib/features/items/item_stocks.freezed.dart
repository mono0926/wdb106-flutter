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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemStocks {
  List<ItemStock> get stocks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
abstract class _$$_ItemStocksCopyWith<$Res>
    implements $ItemStocksCopyWith<$Res> {
  factory _$$_ItemStocksCopyWith(
          _$_ItemStocks value, $Res Function(_$_ItemStocks) then) =
      __$$_ItemStocksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ItemStock> stocks});
}

/// @nodoc
class __$$_ItemStocksCopyWithImpl<$Res>
    extends _$ItemStocksCopyWithImpl<$Res, _$_ItemStocks>
    implements _$$_ItemStocksCopyWith<$Res> {
  __$$_ItemStocksCopyWithImpl(
      _$_ItemStocks _value, $Res Function(_$_ItemStocks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stocks = null,
  }) {
    return _then(_$_ItemStocks(
      stocks: null == stocks
          ? _value._stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<ItemStock>,
    ));
  }
}

/// @nodoc

class _$_ItemStocks extends _ItemStocks {
  _$_ItemStocks({required final List<ItemStock> stocks})
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemStocks &&
            const DeepCollectionEquality().equals(other._stocks, _stocks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stocks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemStocksCopyWith<_$_ItemStocks> get copyWith =>
      __$$_ItemStocksCopyWithImpl<_$_ItemStocks>(this, _$identity);
}

abstract class _ItemStocks extends ItemStocks {
  factory _ItemStocks({required final List<ItemStock> stocks}) = _$_ItemStocks;
  _ItemStocks._() : super._();

  @override
  List<ItemStock> get stocks;
  @override
  @JsonKey(ignore: true)
  _$$_ItemStocksCopyWith<_$_ItemStocks> get copyWith =>
      throw _privateConstructorUsedError;
}

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

class _$_ItemStock extends _ItemStock {
  _$_ItemStock({required this.item, required this.quantity}) : super._();

  @override
  final Item item;
  @override
  final int quantity;

  @override
  String toString() {
    return 'ItemStock(item: $item, quantity: $quantity)';
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

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get id => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int price, String title, String imageUrl});
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res, _$_Item>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? title = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_Item(
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
class _$_Item extends _Item {
  _$_Item(
      {required this.id,
      required this.price,
      required this.title,
      required this.imageUrl})
      : super._();

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, price, title, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(
      this,
    );
  }
}

abstract class _Item extends Item {
  factory _Item(
      {required final String id,
      required final int price,
      required final String title,
      required final String imageUrl}) = _$_Item;
  _Item._() : super._();

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String get id;
  @override
  int get price;
  @override
  String get title;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}
