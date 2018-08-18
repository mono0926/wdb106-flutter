import 'dart:collection';

import 'package:wdb106_sample/model/cart_item.dart';
import 'package:wdb106_sample/model/item.dart';

class CartStore {
  final _items = <CartItem>[];

  List<CartItem> get items => UnmodifiableListView(_items);

  void add(Item item) {
    _update(item, (cartItem) => cartItem.increase());
  }

  void delete(Item item) {
    _update(item, (cartItem) {
      cartItem.decrease();
      if (cartItem.quantity <= 0) {
        _items.remove(cartItem);
      }
    });
  }

  void _update(Item item, Function(CartItem cartItem) transform) {
    final target = _items.firstWhere((x) => x.item.id == item.id, orElse: () {
      final cartItem = CartItem(item: item);
      _items.add(cartItem);
      return cartItem;
    });
    transform(target);
  }

  int get totalPrice =>
      items.fold(0, (sum, e) => sum + e.item.price * e.quantity);

  int get totalQuantity => items.fold(0, (s, e) => s + e.quantity);
}
