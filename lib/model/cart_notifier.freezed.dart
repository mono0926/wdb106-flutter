// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartStorage {
  Map<String, int> get map => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStorageCopyWith<CartStorage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStorageCopyWith<$Res> {
  factory $CartStorageCopyWith(
          CartStorage value, $Res Function(CartStorage) then) =
      _$CartStorageCopyWithImpl<$Res>;
  $Res call({Map<String, int> map});
}

/// @nodoc
class _$CartStorageCopyWithImpl<$Res> implements $CartStorageCopyWith<$Res> {
  _$CartStorageCopyWithImpl(this._value, this._then);

  final CartStorage _value;
  // ignore: unused_field
  final $Res Function(CartStorage) _then;

  @override
  $Res call({
    Object? map = freezed,
  }) {
    return _then(_value.copyWith(
      map: map == freezed
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
abstract class _$$_CartStorageCopyWith<$Res>
    implements $CartStorageCopyWith<$Res> {
  factory _$$_CartStorageCopyWith(
          _$_CartStorage value, $Res Function(_$_CartStorage) then) =
      __$$_CartStorageCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, int> map});
}

/// @nodoc
class __$$_CartStorageCopyWithImpl<$Res> extends _$CartStorageCopyWithImpl<$Res>
    implements _$$_CartStorageCopyWith<$Res> {
  __$$_CartStorageCopyWithImpl(
      _$_CartStorage _value, $Res Function(_$_CartStorage) _then)
      : super(_value, (v) => _then(v as _$_CartStorage));

  @override
  _$_CartStorage get _value => super._value as _$_CartStorage;

  @override
  $Res call({
    Object? map = freezed,
  }) {
    return _then(_$_CartStorage(
      map == freezed
          ? _value._map
          : map // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc

class _$_CartStorage extends _CartStorage {
  _$_CartStorage([final Map<String, int> map = const <String, int>{}])
      : _map = map,
        super._();

  final Map<String, int> _map;
  @override
  @JsonKey()
  Map<String, int> get map {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_map);
  }

  @override
  String toString() {
    return 'CartStorage(map: $map)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartStorage &&
            const DeepCollectionEquality().equals(other._map, _map));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_map));

  @JsonKey(ignore: true)
  @override
  _$$_CartStorageCopyWith<_$_CartStorage> get copyWith =>
      __$$_CartStorageCopyWithImpl<_$_CartStorage>(this, _$identity);
}

abstract class _CartStorage extends CartStorage {
  factory _CartStorage([final Map<String, int> map]) = _$_CartStorage;
  _CartStorage._() : super._();

  @override
  Map<String, int> get map;
  @override
  @JsonKey(ignore: true)
  _$$_CartStorageCopyWith<_$_CartStorage> get copyWith =>
      throw _privateConstructorUsedError;
}
