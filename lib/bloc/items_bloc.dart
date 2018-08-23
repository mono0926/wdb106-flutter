import 'dart:async';

import 'package:meta/meta.dart';
import 'package:wdb106_sample/bloc/bloc_provider.dart';
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

class ItemsBloc implements BlocBase {
  ItemsBloc({@required this.client}) {
    _additionController.listen((item) {
      _itemStore.decrease(item);
      _cartStore.add(item);
      _cartItems.sink.add(_cartStore.items);
      _items.sink.add(_itemStore.items);
      _updateCartSummary();
    });

    _deletionController.listen((item) {
      _itemStore.increase(item);
      _cartStore.delete(item);
      _cartItems.sink.add(_cartStore.items);
      _items.sink.add(_itemStore.items);
      _updateCartSummary();
    });

    _getItems();
  }

  final ApiClient client;

  Stream<List<Item>> get items => _items.stream;

  Stream<List<CartItem>> get cartItems => _cartItems.stream;

  Stream<CartSummary> get cartSummary => _cartSummary.stream;

  Sink<Item> get addition => _additionController.sink;

  Sink<Item> get deletion => _deletionController.sink;

  final _itemStore = ItemStore();
  final _cartStore = CartStore();
  final _items = BehaviorSubject<List<Item>>();
  final _cartItems = BehaviorSubject<List<CartItem>>(seedValue: []);
  final _cartSummary = BehaviorSubject<CartSummary>(
    seedValue: CartSummary(
      state: 'カート(0)',
      totalPrice: 0,
      totalPriceState: '合計金額 0円+税',
    ),
  );
  final _additionController = PublishSubject<Item>();
  final _deletionController = PublishSubject<Item>();

  @override
  void dispose() {
    _items.close();
    _cartItems.close();
    _additionController.close();
    _deletionController.close();
    _cartSummary.close();
  }

  void _updateCartSummary() {
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

  void _getItems() async {
    final items = await client.getItems();
    _itemStore.initialize(items);
    _items.sink.add(_itemStore.items);
  }
}
