import 'package:rxdart/rxdart.dart';

import 'model.dart';

@immutable
class CartStore {
  final _items = BehaviorSubject<Map<int, CartItem>>(seedValue: {});

  ValueObservable<List<CartItem>> get items =>
      _items.stream.map((x) => x.values.toList()).shareValue(seedValue: []);

  void add(Item item) {
    final items = _items.value;
    final cartItem = items[item.id] ??
        CartItem(
          item: item,
          quantity: 0,
        );
    items[item.id] = cartItem.increased();
    _items.add(items);
  }

  void delete(Item item) {
    final items = _items.value;
    final cartItem = items[item.id].decreased();
    if (cartItem.quantity <= 0) {
      items.remove(item.id);
    } else {
      items[item.id] = cartItem;
    }
    _items.add(items);
  }

  void dispose() {
    _items.close();
  }
}
