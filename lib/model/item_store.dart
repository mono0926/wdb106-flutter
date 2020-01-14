import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import 'model.dart';

@immutable
class ItemStore {
  final _stocks = BehaviorSubject<List<ItemStock>>();

  ValueStream<List<ItemStock>> get stocks => _stocks.stream;

  void update(List<ItemStock> stocks) {
    stocks.sort((a, b) => a.item.id.compareTo(b.item.id));
    _stocks.add(stocks);
  }
}
