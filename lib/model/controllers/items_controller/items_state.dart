import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wdb106_sample/model/model.dart';

part 'items_state.freezed.dart';

@freezed
class ItemsState with _$ItemsState {
  factory ItemsState({
    @Default(<ItemStock>[]) List<ItemStock> stocks,
    @Default(true) bool isLoading,
  }) = _ItemsState;

  ItemsState._();

  late final Map<int, ItemStock> _map = Map.fromEntries(
    stocks.map((s) => MapEntry(s.item.id, s)),
  );

  ItemStock stock(int id) => _map[id]!;
}
