// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

mixin _$Item {
  int get id;
  int get price;
  String get title;
  String get imageUrl;

  Item copyWith({int id, int price, String title, String imageUrl});

  Map<String, dynamic> toJson();
}

class _$ItemTearOff {
  const _$ItemTearOff();

  _Item call(
      {@required int id,
      @required int price,
      @required String title,
      @required String imageUrl}) {
    return _Item(
      id: id,
      price: price,
      title: title,
      imageUrl: imageUrl,
    );
  }
}

const $Item = _$ItemTearOff();

@JsonSerializable()
class _$_Item with DiagnosticableTreeMixin implements _Item {
  _$_Item(
      {@required this.id,
      @required this.price,
      @required this.title,
      @required this.imageUrl})
      : assert(id != null),
        assert(price != null),
        assert(title != null),
        assert(imageUrl != null);

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
  bool _didpriceWithUnit = false;
  String _priceWithUnit;

  @override
  String get priceWithUnit {
    if (_didpriceWithUnit == false) {
      _didpriceWithUnit = true;
      _priceWithUnit = '$price円+税';
    }
    return _priceWithUnit;
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Item(id: $id, price: $price, title: $title, imageUrl: $imageUrl, priceWithUnit: $priceWithUnit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Item'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('priceWithUnit', priceWithUnit));
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

  @override
  _$_Item copyWith({
    Object id = freezed,
    Object price = freezed,
    Object title = freezed,
    Object imageUrl = freezed,
  }) {
    return _$_Item(
      id: id == freezed ? this.id : id as int,
      price: price == freezed ? this.price : price as int,
      title: title == freezed ? this.title : title as String,
      imageUrl: imageUrl == freezed ? this.imageUrl : imageUrl as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemToJson(this);
  }
}

abstract class _Item implements Item {
  factory _Item(
      {@required int id,
      @required int price,
      @required String title,
      @required String imageUrl}) = _$_Item;

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
  _Item copyWith({int id, int price, String title, String imageUrl});
}
