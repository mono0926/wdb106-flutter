import '../../model/model.dart';

class ItemsBloc implements Bloc {
  final ApiClient client;
  final ItemStore _itemStore;

  ItemsBloc({
    @required this.client,
    @required ItemStore itemStore,
  }) : _itemStore = itemStore {
    _refresh();
  }

  ValueObservable<List<ItemStock>> get items => _itemStore.stocks;

  void _refresh() async {
    _itemStore.update(await client.getItemStocks());
  }

  @override
  void dispose() {}
}
