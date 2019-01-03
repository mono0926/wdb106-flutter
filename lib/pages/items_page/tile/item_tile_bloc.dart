import 'package:bloc_provider/bloc_provider.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wdb106_sample/model/cart_store.dart';
import 'package:wdb106_sample/model/item_stock.dart';

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
