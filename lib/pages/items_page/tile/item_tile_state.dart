import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_tile_state.freezed.dart';

@freezed
abstract class ItemTileState with _$ItemTileState {
  factory ItemTileState({
    @Default(0) int quantity,
  }) = _ItemTileState;

  @late
  bool get hasStock => quantity > 0;
}
