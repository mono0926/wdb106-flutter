import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';

part 'cart_notifier.freezed.dart';

final cartTotalPriceLabelProvider = Provider(
  (ref) => ref.watch(cartTotalPriceProvider).whenData(
        (price) => '合計金額 $price円+税',
      ),
);

final cartTotalPriceProvider = Provider((ref) {
  final cart = ref.watch(cartProvider);
  return ref.watch(itemStocksProvider).whenData((itemStocks) {
    return cart.itemIds.fold<int>(
      0,
      (sum, id) {
        final item = itemStocks.item(id)!;
        final quantity = cart.quantity(id);
        return sum + item.price * quantity;
      },
    );
  });
});

final cartProvider = StateNotifierProvider<CartNotifier, Cart>(
  (ref) => CartNotifier(),
);

class CartNotifier extends StateNotifier<Cart> {
  CartNotifier() : super(Cart());

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
