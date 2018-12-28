import 'package:meta/meta.dart';
import 'package:wdb106_sample/model/cart_item.dart';
import 'package:wdb106_sample/model/item.dart';

export 'package:wdb106_sample/model/cart_item.dart';

@immutable
class CartStore {
  final _items = <int, CartItem>{};

  List<CartItem> get items => _items.values.toList();

  void add(Item item) {
    var cartItem = _items[item.id];
    if (cartItem == null) {
      cartItem = CartItem(item: item);
      _items[item.id] = cartItem;
    }
    cartItem.increase();
  }

  void delete(Item item) {
    final cartItem = _items[item.id]..decrease();
    if (cartItem.quantity <= 0) {
      _items.remove(item.id);
    }
  }

  int get totalPrice =>
      _items.values.fold(0, (sum, e) => sum + e.item.price * e.quantity);

  int get totalQuantity => _items.values.fold(0, (sum, e) => sum + e.quantity);
}
