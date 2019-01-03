import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wdb106_sample/model/cart_item.dart';
import 'package:wdb106_sample/model/item.dart';

export 'package:wdb106_sample/model/cart_item.dart';

@immutable
class CartStore {
  final _items = BehaviorSubject<Map<int, CartItem>>(seedValue: {});

  ValueObservable<List<CartItem>> get items =>
      _items.stream.map((x) => x.values.toList()).shareValue();

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

  int get totalPrice =>
      _items.value.values.fold(0, (sum, e) => sum + e.item.price * e.quantity);

  int get totalQuantity =>
      _items.value.values.fold(0, (sum, e) => sum + e.quantity);

  void dispose() {
    _items.close();
  }
}
