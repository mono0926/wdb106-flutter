import 'package:rxdart/rxdart.dart';

import 'model.dart';

@immutable
class CartStore {
  final _items = <int, CartItem>{};
  final _subject = BehaviorSubject<List<CartItem>>(seedValue: []);

  ValueObservable<List<CartItem>> get items => _subject;

  void add(Item item) {
    final cartItem = _items[item.id] ??
        CartItem(
          item: item,
          quantity: 0,
        );
    _items[item.id] = cartItem.increased();
    _subject.add(_items.values.toList());
  }

  void delete(Item item) {
    final cartItem = _items[item.id].decreased();
    if (cartItem.quantity <= 0) {
      _items.remove(item.id);
    } else {
      _items[item.id] = cartItem;
    }
    _subject.add(_items.values.toList());
  }

  void dispose() {
    _subject.close();
  }
}
