import 'dart:collection';

import 'package:wdb106_sample/model/item.dart';

class ItemStore {
  var _items = <Item>[];

  List<Item> get items => UnmodifiableListView(_items);

  void initialize(List<Item> items) {
    assert(_items.isEmpty);
    _items = items;
  }

  void increase(Item item) {
    _update(item, (item) => item.increase());
  }

  void decrease(Item item) {
    _update(item, (item) => item.decrease());
  }

  void _update(Item item, Function(Item item) transform) {
    final target = _items.firstWhere((x) => x.id == item.id);
    transform(target);
  }
}
