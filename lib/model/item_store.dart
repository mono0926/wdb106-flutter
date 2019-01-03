import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wdb106_sample/model/item_stock.dart';

export 'package:wdb106_sample/model/item.dart';

@immutable
class ItemStore {
  final _stocks = BehaviorSubject<List<ItemStock>>();

  ValueObservable<List<ItemStock>> get stocks => _stocks.stream;

  void update(List<ItemStock> stocks) {
    _stocks.add(stocks);
  }
}
