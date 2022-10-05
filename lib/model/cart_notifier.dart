import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_notifier.freezed.dart';

final cartProvider = NotifierProvider<CartNotifier, Cart>(CartNotifier.new);

class CartNotifier extends Notifier<Cart> {
  @override
  Cart build() => Cart();

  void add(String id) => state = state.added(id);
  void delete(String id) => state = state.deleted(id);
}

@freezed
class Cart with _$Cart {
  factory Cart([@Default(<String, int>{}) Map<String, int> map]) = _Cart;
  Cart._();

  Cart added(String id) {
    return Cart({
      ...map,
      id: (map[id] ?? 0) + 1,
    });
  }

  Cart deleted(String id) {
    return Cart(
      {
        ...map,
        id: map[id]! - 1,
      }..removeWhere((key, quantity) => quantity <= 0),
    );
  }

  late final itemIds = map.keys.toList()..sort((a, b) => a.compareTo(b));
  late final totalQuantity = map.values.fold<int>(
    0,
    (sum, quantity) {
      return sum + quantity;
    },
  );
  late final isEmpty = totalQuantity <= 0;

  int quantity(String id) => map[id] ?? 0;
}
