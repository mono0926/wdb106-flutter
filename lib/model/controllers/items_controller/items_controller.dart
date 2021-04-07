import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:wdb106_sample/model/model.dart';

import 'items_state.dart';

export 'items_state.dart';

final itemsProvider = StateNotifierProvider<ItemsController, ItemsState>(
  (ref) => ItemsController(ref.read),
);

class ItemsController extends StateNotifier<ItemsState> {
  ItemsController(this._read) : super(ItemsState()) {
    () async {
      state = state.copyWith(
        stocks: await _read(itemsFetcher.future),
        isLoading: false,
      );
    }();
  }

  final Reader _read;
}
