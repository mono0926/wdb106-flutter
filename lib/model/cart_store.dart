import 'dart:collection';

import 'package:wdb106_sample/model/cart_item.dart';
import 'package:wdb106_sample/model/item.dart';

export 'package:wdb106_sample/model/cart_item.dart';

class CartStore {
  final _items = <int, CartItem>{};

  List<CartItem> get items => _items.values.toList();

  void add(Item item) {
    _update(item, (cartItem) => cartItem.increase());
  }

  void delete(Item item) {
    _update(item, (cartItem) {
      cartItem.decrease();
      if (cartItem.quantity <= 0) {
        _items.remove(item.id);
      }
    });
  }

  void _update(Item item, Function(CartItem cartItem) transform) {
    var target = _items[item.id];
    if (target == null) {
      target = CartItem(item: item);
      _items[item.id] = target;
    }
    transform(target);
  }

  int get totalPrice =>
      _items.values.fold(0, (sum, e) => sum + e.item.price * e.quantity);

  int get totalQuantity => _items.values.fold(0, (s, e) => s + e.quantity);
}
