import 'package:rxdart/rxdart.dart';

import 'model.dart';

@immutable
class CartStore {
  final _items = <int, CartItem>{};
  List<CartItem> get _sortedItems =>
      _items.values.toList()..sort((a, b) => a.item.id.compareTo(b.item.id));

  final _subject = BehaviorSubject<List<CartItem>>.seeded([]);

  ValueStream<List<CartItem>> get items => _subject;

  void add(Item item) {
    final cartItem = _items[item.id] ??
        CartItem(
          item: item,
          quantity: 0,
        );
    _items[item.id] = cartItem.increased();
    _subject.add(_sortedItems);
  }

  void delete(Item item) {
    final cartItem = _items[item.id].decreased();
    if (cartItem.quantity <= 0) {
      _items.remove(item.id);
    } else {
      _items[item.id] = cartItem;
    }
    _subject.add(_sortedItems);
  }

  void dispose() {
    _subject.close();
  }
}
