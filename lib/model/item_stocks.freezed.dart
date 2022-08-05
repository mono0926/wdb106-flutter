// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_stocks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemStockStorage {
  List<ItemStock> get stocks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemStockStorageCopyWith<ItemStockStorage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemStockStorageCopyWith<$Res> {
  factory $ItemStockStorageCopyWith(
          ItemStockStorage value, $Res Function(ItemStockStorage) then) =
      _$ItemStockStorageCopyWithImpl<$Res>;
  $Res call({List<ItemStock> stocks});
}

/// @nodoc
class _$ItemStockStorageCopyWithImpl<$Res>
    implements $ItemStockStorageCopyWith<$Res> {
  _$ItemStockStorageCopyWithImpl(this._value, this._then);

  final ItemStockStorage _value;
  // ignore: unused_field
  final $Res Function(ItemStockStorage) _then;

  @override
  $Res call({
    Object? stocks = freezed,
  }) {
    return _then(_value.copyWith(
      stocks: stocks == freezed
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<ItemStock>,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemStockStorageCopyWith<$Res>
    implements $ItemStockStorageCopyWith<$Res> {
  factory _$$_ItemStockStorageCopyWith(
          _$_ItemStockStorage value, $Res Function(_$_ItemStockStorage) then) =
      __$$_ItemStockStorageCopyWithImpl<$Res>;
  @override
  $Res call({List<ItemStock> stocks});
}

/// @nodoc
class __$$_ItemStockStorageCopyWithImpl<$Res>
    extends _$ItemStockStorageCopyWithImpl<$Res>
    implements _$$_ItemStockStorageCopyWith<$Res> {
  __$$_ItemStockStorageCopyWithImpl(
      _$_ItemStockStorage _value, $Res Function(_$_ItemStockStorage) _then)
      : super(_value, (v) => _then(v as _$_ItemStockStorage));

  @override
  _$_ItemStockStorage get _value => super._value as _$_ItemStockStorage;

  @override
  $Res call({
    Object? stocks = freezed,
  }) {
    return _then(_$_ItemStockStorage(
      stocks: stocks == freezed
          ? _value._stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<ItemStock>,
    ));
  }
}

/// @nodoc

class _$_ItemStockStorage extends _ItemStockStorage {
  _$_ItemStockStorage({required final List<ItemStock> stocks})
      : _stocks = stocks,
        super._();

  final List<ItemStock> _stocks;
  @override
  List<ItemStock> get stocks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stocks);
  }

  @override
  String toString() {
    return 'ItemStockStorage(stocks: $stocks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemStockStorage &&
            const DeepCollectionEquality().equals(other._stocks, _stocks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stocks));

  @JsonKey(ignore: true)
  @override
  _$$_ItemStockStorageCopyWith<_$_ItemStockStorage> get copyWith =>
      __$$_ItemStockStorageCopyWithImpl<_$_ItemStockStorage>(this, _$identity);
}

abstract class _ItemStockStorage extends ItemStockStorage {
  factory _ItemStockStorage({required final List<ItemStock> stocks}) =
      _$_ItemStockStorage;
  _ItemStockStorage._() : super._();

  @override
  List<ItemStock> get stocks;
  @override
  @JsonKey(ignore: true)
  _$$_ItemStockStorageCopyWith<_$_ItemStockStorage> get copyWith =>
      throw _privateConstructorUsedError;
}
