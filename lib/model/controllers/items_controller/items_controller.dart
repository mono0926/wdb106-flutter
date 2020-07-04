import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:wdb106_sample/model/model.dart';

import 'items_state.dart';

export 'items_state.dart';

final itemsProvider = StateNotifierProvider((ref) => ItemsController(ref));

class ItemsController extends StateNotifier<ItemsState> {
  ItemsController(this._ref) : super(ItemsState()) {
    _load();
  }

  final ProviderReference _ref;

  Future<void> _load() async {
    state = state.copyWith(
      stocks: await _ref.read(apiClient).getItemStocks(),
      isLoading: false,
    );
  }
}
