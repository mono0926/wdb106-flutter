import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wdb106_sample/model/model.dart';

part 'items_state.freezed.dart';

@freezed
abstract class ItemsState implements _$ItemsState {
  factory ItemsState({
    @Default(<ItemStock>[]) List<ItemStock> stocks,
    @Default(true) bool isLoading,
  }) = _ItemsState;

  ItemsState._();

  @late
  Map<int, ItemStock> get _map => Map.fromEntries(
        stocks.map((s) => MapEntry(s.item.id, s)),
      );

  ItemStock stock(int id) => _map[id];
}
