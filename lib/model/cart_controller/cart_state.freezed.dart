// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _CartState call({Map<String, int> itemMap = const <String, int>{}}) {
    return _CartState(
      itemMap: itemMap,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  Map<String, int> get itemMap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call({Map<String, int> itemMap});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? itemMap = freezed,
  }) {
    return _then(_value.copyWith(
      itemMap: itemMap == freezed
          ? _value.itemMap
          : itemMap // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
abstract class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(
          _CartState value, $Res Function(_CartState) then) =
      __$CartStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, int> itemMap});
}

/// @nodoc
class __$CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(_CartState _value, $Res Function(_CartState) _then)
      : super(_value, (v) => _then(v as _CartState));

  @override
  _CartState get _value => super._value as _CartState;

  @override
  $Res call({
    Object? itemMap = freezed,
  }) {
    return _then(_CartState(
      itemMap: itemMap == freezed
          ? _value.itemMap
          : itemMap // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc

class _$_CartState extends _CartState {
  _$_CartState({this.itemMap = const <String, int>{}}) : super._();

  @JsonKey(defaultValue: const <String, int>{})
  @override
  final Map<String, int> itemMap;

  @override
  String toString() {
    return 'CartState(itemMap: $itemMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartState &&
            (identical(other.itemMap, itemMap) ||
                const DeepCollectionEquality().equals(other.itemMap, itemMap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemMap);

  @JsonKey(ignore: true)
  @override
  _$CartStateCopyWith<_CartState> get copyWith =>
      __$CartStateCopyWithImpl<_CartState>(this, _$identity);
}

abstract class _CartState extends CartState {
  factory _CartState({Map<String, int> itemMap}) = _$_CartState;
  _CartState._() : super._();

  @override
  Map<String, int> get itemMap => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartStateCopyWith<_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}
