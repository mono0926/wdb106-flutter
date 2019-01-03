import 'package:bloc_provider/bloc_provider.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wdb106_sample/model/cart_store.dart';
import 'package:wdb106_sample/model/item_stock.dart';

class ItemTileBloc implements Bloc {
  final ItemStock stock;
  final CartStore cartStore;
  ItemTileBloc({
    @required this.stock,
    @required this.cartStore,
  }) {
    cartStore.items.listen((items) {
      // TODO: equal override
      final cartItem = items.firstWhere(
        (x) => x.item.id == stock.item.id,
        orElse: () => null,
      );
      final cartItemQuantity = cartItem == null ? 0 : cartItem.quantity;
      final quantity = stock.quantity - cartItemQuantity;
      if (_quantity.value != quantity) {
        _quantity.add(quantity);
      }
    });
    _additionToCart.listen((_) {
      cartStore.add(stock.item);
    });
  }

  final _quantity = BehaviorSubject<int>(seedValue: 0);
  final _additionToCart = PublishSubject<void>();

  ValueObservable<int> get quantity => _quantity.stream;
  Sink<void> get additionToCart => _additionToCart.sink;

  @override
  void dispose() {
    _quantity.close();
    _additionToCart.close();
  }
}
