import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:wdb106_sample/model/model.dart';

import 'cart_state.dart';

export 'cart_state.dart';

final cartEmptyProvider = Provider(
  (ref) => ref.watch(cartTotalQuantityProvider.select((s) => s <= 0)),
);

final cartTotalQuantityProvider = Provider((ref) {
  return ref.watch(cartController.select((s) => s.itemMap)).values.fold<int>(
    0,
    (sum, quantity) {
      return sum + quantity;
    },
  );
});

final cartTotalPriceLabelProvider = Provider(
  (ref) => '合計金額 ${ref.watch(cartTotalPriceProvider)}円+税',
);

final cartTotalPriceProvider = Provider((ref) {
  final itemMap = ref.watch(itemMapProvider);
  final cartMap = ref.watch(cartController.select((s) => s.itemMap));
  return cartMap.keys.fold<int>(
    0,
    (sum, id) {
      final item = itemMap[id]!;
      final quantity = cartMap[id]!;
      return sum + item.price * quantity;
    },
  );
});

final cartQuantityProviders = Provider.family<int, String>(
  (ref, id) => ref.watch(cartController.select((s) => s.itemMap[id] ?? 0)),
);

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
