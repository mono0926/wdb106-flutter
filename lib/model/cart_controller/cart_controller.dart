import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:wdb106_sample/model/model.dart';

import 'cart_state.dart';

export 'cart_state.dart';

final cartEmptyProvider = Provider(
  (ref) => ref.watch(cartSummaryProvider.select((s) => s.quantity <= 0)),
);

final cartSummaryProvider = Provider((ref) {
  final itemMap = ref.watch(itemMapProvider);
  final cartMap = ref.watch(cartController.select((s) => s.itemMap));

  return CartSummary(
    quantity: cartMap.values.fold<int>(
      0,
      (sum, quantity) {
        return sum + quantity;
      },
    ),
    totalPrice: cartMap.keys.fold<int>(
      0,
      (sum, id) {
        final item = itemMap[id]!;
        final quantity = cartMap[id]!;
        return sum + item.price * quantity;
      },
    ),
  );
});

final cartController = StateNotifierProvider<CartController, CartState>(
  (ref) => CartController(),
);

class CartController extends StateNotifier<CartState> {
  CartController() : super(CartState());

  void add(String id) {
    state = state.copyWith(
      itemMap: {
        ...state.itemMap,
        id: (state.itemMap[id] ?? 0) + 1,
      },
    );
  }

  void delete(String id) {
    state = state.copyWith(
      itemMap: {
        ...state.itemMap,
        id: state.itemMap[id]! - 1,
      }..removeWhere((key, quantity) => quantity <= 0),
    );
  }
}
