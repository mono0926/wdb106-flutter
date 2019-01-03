import 'dart:async';

import 'package:bloc_provider/bloc_provider.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wdb106_sample/model/cart_store.dart';

@immutable
class CartSummary {
  final String state;
  final String totalPriceState;
  final int totalPrice;

  const CartSummary({
    @required int quantity,
    @required this.totalPrice,
  })  : state = 'カート($quantity)',
        totalPriceState = '合計金額 $totalPrice円+税';

  static const zero = CartSummary(
    quantity: 0,
    totalPrice: 0,
  );
}

class CartBloc implements Bloc {
  final CartStore cartStore;
  final _deletionController = PublishSubject<Item>();
  StreamSubscription _cartStoreSubscription;
  final _cartSummary = BehaviorSubject<CartSummary>(
    seedValue: CartSummary.zero,
  );

  CartBloc({@required this.cartStore}) {
    // TODO: pipe?
    _cartStoreSubscription = cartStore.items.listen((items) {
      final totalQuantity = items.fold<int>(0, (sum, e) => sum + e.quantity);
      final totalPrice =
          items.fold<int>(0, (sum, e) => sum + e.item.price * e.quantity);

      _cartSummary.add(CartSummary(
        quantity: totalQuantity,
        totalPrice: totalPrice,
      ));
    });

    _deletionController.listen(cartStore.delete);
  }

  ValueObservable<CartSummary> get cartSummary => _cartSummary.stream;
  ValueObservable<List<CartItem>> get cartItems => cartStore.items;
  Stream<Item> get deleted => _deletionController.stream;
  Sink<Item> get deletion => _deletionController.sink;

  @override
  void dispose() {
    _cartSummary.close();
    _deletionController.close();
    _cartStoreSubscription.cancel();
  }
}
