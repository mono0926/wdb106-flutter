import '../../model/model.dart';

@immutable
class CartSummary {
  const CartSummary({
    @required this.quantity,
    @required this.totalPrice,
  });
  final int quantity;
  final int totalPrice;
  String get state => 'カート($quantity)';
  String get totalPriceState => '合計金額 $totalPrice円+税';

  static const zero = CartSummary(quantity: 0, totalPrice: 0);

  @override
  String toString() {
    return 'CartSummary{quantity: $quantity, totalPrice: $totalPrice}';
  }
}

class CartBloc implements Bloc {
  CartBloc({@required CartStore cartStore})
      : _cartStore = cartStore,
        _cartSummary = cartStore.items.map<CartSummary>((items) {
          final totalQuantity =
              items.fold<int>(0, (sum, e) => sum + e.quantity);
          final totalPrice =
              items.fold<int>(0, (sum, e) => sum + e.item.price * e.quantity);
          return CartSummary(
            quantity: totalQuantity,
            totalPrice: totalPrice,
          );
        }).shareValueSeeded(CartSummary.zero) {
    _deletionController.listen(_cartStore.delete);
  }

  final CartStore _cartStore;
  final _deletionController = PublishSubject<Item>();
  final ValueStream<CartSummary> _cartSummary;

  ValueStream<CartSummary> get cartSummary => _cartSummary;
  ValueStream<List<CartItem>> get cartItems => _cartStore.items;
  Sink<Item> get deletion => _deletionController.sink;

  @override
  void dispose() {
    _deletionController.close();
  }
}
