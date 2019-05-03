import '../../../model/model.dart';

class ItemTileBloc implements Bloc {
  final ItemStock stock;
  final CartStore _cartStore;

  final ValueObservable<int> _quantity;
  final _additionToCart = PublishSubject<void>();
  ValueObservable<bool> _hasStock;

  ItemTileBloc({
    @required this.stock,
    @required CartStore cartStore,
  })  : _cartStore = cartStore,
        _quantity = cartStore.items
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
            .shareValueSeeded(0) {
    _additionToCart.listen((_) {
      _cartStore.add(stock.item);
    });

    _hasStock = _quantity
        .map<bool>((x) => x > 0)
        .distinct((a, b) => a == b)
        .shareValueSeeded(false);
  }

  ValueObservable<int> get quantity => _quantity;
  ValueObservable<bool> get hasStock => _hasStock;
  Sink<void> get additionToCart => _additionToCart.sink;

  @override
  void dispose() {
    _additionToCart.close();
  }
}
