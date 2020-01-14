import '../../model/model.dart';

class ItemsBloc implements Bloc {
  ItemsBloc({
    @required this.client,
    @required ItemStore itemStore,
  }) : _itemStore = itemStore {
    _refresh();
  }

  final ApiClient client;
  final ItemStore _itemStore;

  ValueStream<List<ItemStock>> get items => _itemStore.stocks;

  Future<void> _refresh() async {
    _itemStore.update(await client.getItemStocks());
  }

  @override
  void dispose() {}
}
