import '../../model/model.dart';

class ItemsBloc implements Bloc {
  final ApiClient client;
  final ItemStore itemStore;

  ItemsBloc({
    @required this.client,
    @required this.itemStore,
  }) {
    _refresh();
  }

  ValueObservable<List<ItemStock>> get items => itemStore.stocks;

  void _refresh() async {
    itemStore.update(await client.getItemStocks());
  }

  @override
  void dispose() {}
}
