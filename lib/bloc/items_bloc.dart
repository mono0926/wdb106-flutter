import 'dart:async';

import 'package:meta/meta.dart';
import 'package:wdb106_sample/model/api.dart';
import 'package:wdb106_sample/model/cart_item.dart';
import 'package:wdb106_sample/model/cart_store.dart';
import 'package:wdb106_sample/model/item.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wdb106_sample/model/item_store.dart';

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

class _ItemsRefreshRequest {}

class ItemsAdditionRequest {
  final Item item;

  ItemsAdditionRequest({@required this.item});
}

class ItemsRemoveRequest {
  final Item item;

  ItemsRemoveRequest({@required this.item});
}

class ItemsBloc {
  ItemsBloc({@required this.client}) {
    _refreshController.take(1).listen((req) async {
      final items = await client.getItems();
      _itemStore.initialize(items);
      _items.sink.add(_itemStore.items);
    });

    _additionController.listen((req) {
      final item = req.item;
      _itemStore.decrease(item);
      _cartStore.add(item);
      _cartItems.sink.add(_cartStore.items);
      _items.sink.add(_itemStore.items);
      updateCartSummary();
    });

    _removeController.listen((req) {
      final item = req.item;
      _itemStore.increase(item);
      _cartStore.remove(item);
      _cartItems.sink.add(_cartStore.items);
      _items.sink.add(_itemStore.items);
      updateCartSummary();
    });

    _refreshController.sink.add(_ItemsRefreshRequest());
  }

  final ApiClient client;
  final _itemStore = ItemStore();
  final _cartStore = CartStore();

  Stream<List<Item>> get items => _items.stream;

  Stream<List<CartItem>> get cartItems => _cartItems.stream;

  Stream<CartSummary> get cartSummary => _cartSummary.stream;

  Sink<ItemsAdditionRequest> get addition => _additionController.sink;

  Sink<ItemsRemoveRequest> get remove => _removeController.sink;

  final _items = BehaviorSubject<List<Item>>();
  final _cartItems = BehaviorSubject<List<CartItem>>(seedValue: []);
  final _cartSummary = BehaviorSubject<CartSummary>(
    seedValue: CartSummary(
      state: 'カート(-)',
      totalPrice: 0,
      totalPriceState: '',
    ),
  );

  final _refreshController = PublishSubject<_ItemsRefreshRequest>();
  final _additionController = PublishSubject<ItemsAdditionRequest>();
  final _removeController = PublishSubject<ItemsRemoveRequest>();

  void updateCartSummary() {
    final quantity = _cartStore.totalQuantity;
    final int totalPrice = _cartStore.totalPrice;
    _cartSummary.add(
      CartSummary(
        state: 'カート($quantity)',
        totalPriceState: '合計金額 $totalPrice円+税',
        totalPrice: totalPrice,
      ),
    );
  }

  void dispose() {
    _items.close();
    _cartItems.close();
    _refreshController.close();
    _additionController.close();
    _removeController.close();
    _cartSummary.close();
  }
}
