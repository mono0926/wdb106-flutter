import 'dart:async';

import 'package:meta/meta.dart';
import 'package:wdb106_sample/model/api.dart';
import 'package:wdb106_sample/model/item.dart';
import 'package:rxdart/rxdart.dart';

class CartAmount {
  final String value;
  final bool isEmpty;

  CartAmount({
    @required this.value,
    @required this.isEmpty,
  });
}

class TotalPrice {
  final String value;

  TotalPrice({
    @required this.value,
    @required this.price,
  });

  final int price;
}

class ItemHolder {
  ItemHolder({
    @required this.item,
    this.addedToCart = 0,
  });

  final Item item;
  var addedToCart = 0;

  int get remainCount => item.inventory - addedToCart;
}

class ItemsRefreshRequest {}

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
    _refreshController.stream.listen((req) async {
      final items = await client.response<List<Item>>(ItemListRequest());
      _itemList = items.map((item) => ItemHolder(item: item)).toList();
      _items.sink.add(_itemList);
    });

    _additionController.listen((req) {
      _itemList.firstWhere((x) => x.item.id == req.item.id).addedToCart += 1;
      _cartItems.sink.add(_itemsInCart);
      _items.sink.add(_itemList);
      updateTotalPrice();
      updateCartAmount();
    });

    _removeController.listen((req) {
      _itemList.firstWhere((x) => x.item.id == req.item.id).addedToCart -= 1;
      _cartItems.sink.add(_itemsInCart);
      _items.sink.add(_itemList);
      updateTotalPrice();
      updateCartAmount();
    });

    refresh.add(ItemsRefreshRequest());
  }

  final ApiClient client;
  var _itemList = <ItemHolder>[];

  List<ItemHolder> get _itemsInCart =>
      _itemList.where((holder) => holder.addedToCart > 0).toList();

  Stream<List<ItemHolder>> get items => _items.stream;

  Stream<List<ItemHolder>> get cartItems => _cartItems.stream;

  Stream<TotalPrice> get totalPrice => _totalPrice.stream;

  Stream<CartAmount> get cartAmount => _cartAmount.stream;

  Sink<ItemsRefreshRequest> get refresh => _refreshController.sink;

  Sink<ItemsAdditionRequest> get addition => _additionController.sink;

  Sink<ItemsRemoveRequest> get remove => _removeController.sink;

  final _items = BehaviorSubject<List<ItemHolder>>();
  final _cartItems = BehaviorSubject<List<ItemHolder>>(seedValue: []);
  final _totalPrice = BehaviorSubject<TotalPrice>(
    seedValue: TotalPrice(value: '-', price: 0),
  );
  final _cartAmount = BehaviorSubject<CartAmount>(
    seedValue: CartAmount(
      value: 'カート(-)',
      isEmpty: true,
    ),
  );

  final _refreshController = PublishSubject<ItemsRefreshRequest>();
  final _additionController = PublishSubject<ItemsAdditionRequest>();
  final _removeController = PublishSubject<ItemsRemoveRequest>();

  updateTotalPrice() {
    final int price =
        _itemList.fold(0, (sum, e) => sum + e.item.price * e.addedToCart);
    _totalPrice.add(
      TotalPrice(
        value: '合計金額 $price円+税',
        price: price,
      ),
    );
  }

  updateCartAmount() {
    final count = _itemList.fold(0, (s, e) => s + e.addedToCart);
    _cartAmount.add(
      CartAmount(
        value: 'カート($count)',
        isEmpty: count == 0,
      ),
    );
  }

  void dispose() {
    _items.close();
    _cartItems.close();
    _refreshController.close();
    _additionController.close();
    _removeController.close();
    _totalPrice.close();
    _cartAmount.close();
  }
}
