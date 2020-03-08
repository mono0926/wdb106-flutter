import 'package:mono_kit/mono_kit.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:wdb106_sample/model/model.dart';

import 'items_state.dart';

export 'items_state.dart';

class ItemsController extends StateNotifier<ItemsState> with LocatorMixin {
  ItemsController() : super(const ItemsState());

  final _sb = SubscriptionHolder();

  ApiClient get _client => read();
  ItemStore get _itemStore => read();

  Future<void> initialize() async {
    await Future.microtask(() {});
    _itemStore.update(await _client.getItemStocks());
    _sb.add(
      _itemStore.stocks.listen(
        (stocks) => state = state.copyWith(
          stocks: stocks,
          isLoading: false,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _sb.dispose();

    super.dispose();
  }
}
