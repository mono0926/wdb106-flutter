import 'package:state_notifier/state_notifier.dart';
import 'package:wdb106_sample/model/model.dart';

import 'items_state.dart';

export 'items_state.dart';

class ItemsController extends StateNotifier<ItemsState> with LocatorMixin {
  ItemsController() : super(const ItemsState());

  ApiClient get _client => read();

  @override
  Future<void> initState() async {
    final stocks = await _client.getItemStocks();
    state = state.copyWith(
      stocks: stocks,
      isLoading: false,
    );
  }
}
