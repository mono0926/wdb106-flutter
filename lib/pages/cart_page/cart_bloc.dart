import 'package:bloc_provider/bloc_provider.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wdb106_sample/model/cart_store.dart';

class CartSummary {
  final String state;
  final String totalPriceState;
  final int totalPrice;

  CartSummary({
    @required this.state,
    @required this.totalPriceState,
    @required this.totalPrice,
  });
}

class CartBloc implements Bloc {
  final CartStore cartStore;
  final _deletionController = PublishSubject<Item>();
  final _cartItems = BehaviorSubject<List<CartItem>>(seedValue: []);
  final _cartSummary = BehaviorSubject<CartSummary>();

  CartBloc({@required this.cartStore}) {
    // TODO: pipe?
    cartStore.items.listen((items) {
      _cartItems.sink.add(items);
      _updateCartSummary();
    });

    _deletionController.listen(cartStore.delete);
  }

  ValueObservable<CartSummary> get cartSummary => _cartSummary.stream;
  ValueObservable<List<CartItem>> get cartItems => _cartItems.stream;
  Stream<Item> get deleted => _deletionController.stream;
  Sink<Item> get deletion => _deletionController.sink;

  void _updateCartSummary() {
    final quantity = cartStore.totalQuantity;
    final int totalPrice = cartStore.totalPrice;
    _cartSummary.add(
      CartSummary(
        state: 'カート($quantity)',
        totalPriceState: '合計金額 $totalPrice円+税',
        totalPrice: totalPrice,
      ),
    );
  }

  @override
  void dispose() {
    _cartSummary.close();
    _deletionController.close();
    _cartItems.close();
  }
}
