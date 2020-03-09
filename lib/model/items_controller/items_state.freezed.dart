// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'items_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ItemsState {
  List<ItemStock> get stocks;
  bool get isLoading;

  ItemsState copyWith({List<ItemStock> stocks, bool isLoading});
}

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

const $ItemsState = _$ItemsStateTearOff();

class _$_ItemsState implements _ItemsState {
  const _$_ItemsState(
      {this.stocks = const <ItemStock>[], this.isLoading = true});

  @JsonKey(defaultValue: const <ItemStock>[])
  @override
  final List<ItemStock> stocks;
  @JsonKey(defaultValue: true)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ItemsState(stocks: $stocks, isLoading: $isLoading)';
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
  _$_ItemsState copyWith({
    Object stocks = freezed,
    Object isLoading = freezed,
  }) {
    return _$_ItemsState(
      stocks: stocks == freezed ? this.stocks : stocks as List<ItemStock>,
      isLoading: isLoading == freezed ? this.isLoading : isLoading as bool,
    );
  }
}

abstract class _ItemsState implements ItemsState {
  const factory _ItemsState({List<ItemStock> stocks, bool isLoading}) =
      _$_ItemsState;

  @override
  List<ItemStock> get stocks;
  @override
  bool get isLoading;

  @override
  _ItemsState copyWith({List<ItemStock> stocks, bool isLoading});
}
