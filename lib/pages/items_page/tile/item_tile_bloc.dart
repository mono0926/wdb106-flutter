import '../../../model/model.dart';

class ItemTileBloc implements Bloc {
  final ItemStock stock;
  final CartStore cartStore;

  final ValueObservable<int> _quantity;
  final _additionToCart = PublishSubject<void>();

  ItemTileBloc({
    @required this.stock,
    @required this.cartStore,
  }) : _quantity = cartStore.items
            .map<int>((items) {
              final cartItem = items.firstWhere(
                (x) => x.item == stock.item,
                orElse: () => null,
              );
              final cartItemQuantity = cartItem == null ? 0 : cartItem.quantity;
              final quantity = stock.quantity - cartItemQuantity;
              return quantity;
            })
            .distinct((a, b) => a == b)
            .shareValue(seedValue: 0) {
    _additionToCart.listen((_) {
      cartStore.add(stock.item);
    });
  }

  ValueObservable<int> get quantity => _quantity;
  Sink<void> get additionToCart => _additionToCart.sink;

  @override
  void dispose() {
    _additionToCart.close();
  }
}
