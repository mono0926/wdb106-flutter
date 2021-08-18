import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:wdb106_sample/model/model.dart';

import 'cart_state.dart';

export 'cart_state.dart';

final cartProvider = StateNotifierProvider<CartController, CartState>(
  (ref) => CartController(ref.read),
);

class CartController extends StateNotifier<CartState> {
  CartController(this._read) : super(CartState());

  Reader _read;

  void add(int id) {
    final item = _read(itemsProviders(id)).data!.value;
    state = state.copyWith(
      itemMap: {
        ...state.itemMap,
        item.id: (state.itemMap[item.id] ??
                CartItem(
                  item: item,
                  quantity: 0,
                ))
            .increased(),
      },
    );
  }

  void delete(Item item) {
    state = state.copyWith(
      itemMap: {
        ...state.itemMap,
        item.id: state.itemMap[item.id]!.decreased(),
      }..removeWhere((key, value) => value.quantity <= 0),
    );
  }
}
