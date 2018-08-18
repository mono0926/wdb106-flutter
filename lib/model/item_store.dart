import 'package:wdb106_sample/model/item.dart';
export 'package:wdb106_sample/model/item.dart';

class ItemStore {
  var _items = <int, Item>{};

  List<Item> get items => _items.values.toList();

  void initialize(List<Item> items) {
    assert(_items.isEmpty);
    _items = Map.fromEntries(items.map((item) => MapEntry(item.id, item)));
  }

  void increase(Item item) {
    _update(item, (item) => item.increase());
  }

  void decrease(Item item) {
    _update(item, (item) => item.decrease());
  }

  void _update(Item item, Function(Item item) transform) {
    final target = _items[item.id];
    transform(target);
  }
}
