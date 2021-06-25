import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_tile_state.freezed.dart';

@freezed
class ItemTileState with _$ItemTileState {
  factory ItemTileState({
    @Default(0) int quantity,
  }) = _ItemTileState;
  ItemTileState._();

  late final bool hasStock = quantity > 0;
}
