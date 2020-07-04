// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'items_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ItemsStateTearOff {
  const _$ItemsStateTearOff();

  _ItemsState call(
      {List<ItemStock> stocks = const <ItemStock>[], bool isLoading = true}) {
    return _ItemsState(
      stocks: stocks,
      isLoading: isLoading,
    );
  }
}

// ignore: unused_element
const $ItemsState = _$ItemsStateTearOff();

mixin _$ItemsState {
  List<ItemStock> get stocks;
  bool get isLoading;

  $ItemsStateCopyWith<ItemsState> get copyWith;
}

abstract class $ItemsStateCopyWith<$Res> {
  factory $ItemsStateCopyWith(
          ItemsState value, $Res Function(ItemsState) then) =
      _$ItemsStateCopyWithImpl<$Res>;
  $Res call({List<ItemStock> stocks, bool isLoading});
}

class _$ItemsStateCopyWithImpl<$Res> implements $ItemsStateCopyWith<$Res> {
  _$ItemsStateCopyWithImpl(this._value, this._then);

  final ItemsState _value;
  // ignore: unused_field
  final $Res Function(ItemsState) _then;

  @override
  $Res call({
    Object stocks = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      stocks: stocks == freezed ? _value.stocks : stocks as List<ItemStock>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

abstract class _$ItemsStateCopyWith<$Res> implements $ItemsStateCopyWith<$Res> {
  factory _$ItemsStateCopyWith(
          _ItemsState value, $Res Function(_ItemsState) then) =
      __$ItemsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ItemStock> stocks, bool isLoading});
}

class __$ItemsStateCopyWithImpl<$Res> extends _$ItemsStateCopyWithImpl<$Res>
    implements _$ItemsStateCopyWith<$Res> {
  __$ItemsStateCopyWithImpl(
      _ItemsState _value, $Res Function(_ItemsState) _then)
      : super(_value, (v) => _then(v as _ItemsState));

  @override
  _ItemsState get _value => super._value as _ItemsState;

  @override
  $Res call({
    Object stocks = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_ItemsState(
      stocks: stocks == freezed ? _value.stocks : stocks as List<ItemStock>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

class _$_ItemsState extends _ItemsState {
  _$_ItemsState({this.stocks = const <ItemStock>[], this.isLoading = true})
      : assert(stocks != null),
        assert(isLoading != null),
        super._();

  @JsonKey(defaultValue: const <ItemStock>[])
  @override
  final List<ItemStock> stocks;
  @JsonKey(defaultValue: true)
  @override
  final bool isLoading;

  bool _did_map = false;
  Map<int, ItemStock> __map;

  @override
  Map<int, ItemStock> get _map {
    if (_did_map == false) {
      _did_map = true;
      __map = Map.fromEntries(
        stocks.map((s) => MapEntry(s.item.id, s)),
      );
    }
    return __map;
  }

  @override
  String toString() {
    return 'ItemsState(stocks: $stocks, isLoading: $isLoading, _map: $_map)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemsState &&
            (identical(other.stocks, stocks) ||
                const DeepCollectionEquality().equals(other.stocks, stocks)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(stocks) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$ItemsStateCopyWith<_ItemsState> get copyWith =>
      __$ItemsStateCopyWithImpl<_ItemsState>(this, _$identity);
}

abstract class _ItemsState extends ItemsState {
  _ItemsState._() : super._();
  factory _ItemsState({List<ItemStock> stocks, bool isLoading}) = _$_ItemsState;

  @override
  List<ItemStock> get stocks;
  @override
  bool get isLoading;
  @override
  _$ItemsStateCopyWith<_ItemsState> get copyWith;
}
