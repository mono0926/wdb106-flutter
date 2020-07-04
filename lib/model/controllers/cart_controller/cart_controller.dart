import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:wdb106_sample/model/model.dart';

import 'cart_state.dart';

export 'cart_state.dart';

final cartProvider = StateNotifierProvider((ref) => CartController());

class CartController extends StateNotifier<CartState> with LocatorMixin {
  CartController() : super(CartState());

  void add(Item item) {
    final itemMap = Map<int, CartItem>.from(state.itemMap);
    final cartItem = itemMap[item.id] ??
        CartItem(
          item: item,
          quantity: 0,
        );
    itemMap[item.id] = cartItem.increased();
    state = state.copyWith(itemMap: itemMap);
  }

  void delete(Item item) {
    final itemMap = Map<int, CartItem>.from(state.itemMap);
    final cartItem = itemMap[item.id].decreased();
    if (cartItem.quantity <= 0) {
      itemMap.remove(item.id);
    } else {
      itemMap[item.id] = cartItem;
    }
    state = state.copyWith(itemMap: itemMap);
  }
}
