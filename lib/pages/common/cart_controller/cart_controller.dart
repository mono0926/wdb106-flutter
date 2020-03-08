import 'package:mono_kit/mono_kit.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:wdb106_sample/model/model.dart';

import 'cart_state.dart';

export 'cart_state.dart';

class CartController extends StateNotifier<CartState> with LocatorMixin {
  CartController()
      : super(CartState(
          summary: CartSummary(),
        )) {
    Future.microtask(() {
      _sh.add(
        _cartStore.items.listen((items) {
          state = state.copyWith(
            items: items,
            summary: state.summary.copyWith(
              quantity: items.fold<int>(
                0,
                (sum, e) => sum + e.quantity,
              ),
              totalPrice: items.fold<int>(
                0,
                (sum, e) => sum + e.item.price * e.quantity,
              ),
            ),
          );
        }),
      );
    });
  }

  CartStore get _cartStore => read();
  final _sh = SubscriptionHolder();

  void delete(Item item) => _cartStore.delete(item);

  @override
  void dispose() {
    _sh.dispose();

    super.dispose();
  }
}
