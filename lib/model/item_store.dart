import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import 'model.dart';

@immutable
class ItemStore {
  final _stocks = BehaviorSubject<List<ItemStock>>();

  ValueObservable<List<ItemStock>> get stocks => _stocks.stream;

  void update(List<ItemStock> stocks) {
    _stocks.add(stocks);
  }
}
