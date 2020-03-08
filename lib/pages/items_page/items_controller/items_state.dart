import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wdb106_sample/model/model.dart';

part 'items_state.freezed.dart';

@freezed
abstract class ItemsState with _$ItemsState {
  const factory ItemsState({
    @Default(<ItemStock>[]) List<ItemStock> stocks,
    @Default(true) bool isLoading,
  }) = _ItemsState;
}
