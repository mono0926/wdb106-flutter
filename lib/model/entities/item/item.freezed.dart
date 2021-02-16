// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

  _Item call(
      {required int id,
      required int price,
      required String title,
      required String imageUrl}) {
    return _Item(
      id: id,
      price: price,
      title: title,
      imageUrl: imageUrl,
    );
  }

  Item fromJson(Map<String, Object> json) {
    return Item.fromJson(json);
  }
}

/// @nodoc
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  int get id;
  int get price;
  String get title;
  String get imageUrl;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call({int id, int price, String title, String imageUrl});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      price: price == freezed ? _value.price : price as int,
      title: title == freezed ? _value.title : title as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call({int id, int price, String title, String imageUrl});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_Item(
      id: id == freezed ? _value.id : id as int,
      price: price == freezed ? _value.price : price as int,
      title: title == freezed ? _value.title : title as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Item extends _Item with DiagnosticableTreeMixin {
  _$_Item(
      {required this.id,
      required this.price,
      required this.title,
      required this.imageUrl})
      : super._();

  factory _$_Item.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemFromJson(json);

  @override
  final int id;
  @override
  final int price;
  @override
  final String title;
  @override
  final String imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Item(id: $id, price: $price, title: $title, imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Item'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('imageUrl', imageUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemToJson(this);
  }
}

abstract class _Item extends Item {
  _Item._() : super._();
  factory _Item(
      {required int id,
      required int price,
      required String title,
      required String imageUrl}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  int get id;
  @override
  int get price;
  @override
  String get title;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith;
}
