import 'dart:async';
import 'dart:collection';

import 'package:meta/meta.dart';
import 'package:wdb106_sample/model/api.dart';
import 'package:wdb106_sample/model/item.dart';
import 'package:rxdart/rxdart.dart';

class Cart {
  final _items = <Item, int>{};

  UnmodifiableMapView<Item, int> get items => UnmodifiableMapView(_items);

  add(Item item) {
    _items[item] = (_items[item] ?? 0) + 1;
  }

  remove(Item item) {
    final count = _items[item];
    if (count == null) {
      assert(false);
      return;
    }
    final nextCount = count - 1;
    if (nextCount == 0) {
      _items.remove(item);
    } else {
      _items[item] = nextCount;
    }
  }
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
  final ApiClient client;
  final _cart = Cart();

  ItemsBloc({@required this.client}) {
    _refreshController.stream.listen((req) async {
      final items = await client.response<List<Item>>(ItemListRequest());
      _items.sink.add(_itemsAdjusted(items));
    });

    _additionController.listen((req) {
      _cart.add(req.item);
      _cartItems.sink.add(_cart.items);
      _items.sink.add(_itemsAdjusted(_items.value));
      updateTotalPrice();
    });

    _removeController.listen((req) {
      _cart.remove(req.item);
      _cartItems.sink.add(_cart.items);
      _items.sink.add(_itemsAdjusted(_items.value));
      updateTotalPrice();
    });

    refresh.add(ItemsRefreshRequest());
  }

  Stream<List<Item>> get items => _items.stream;

  Stream<Map<Item, int>> get cartItems => _cartItems.stream;

  Stream<int> get totalPrice => _totalPrice.stream;

  Sink<ItemsRefreshRequest> get refresh => _refreshController.sink;

  Sink<ItemsAdditionRequest> get addition => _additionController.sink;

  Sink<ItemsRemoveRequest> get remove => _removeController.sink;

  final _items = BehaviorSubject<List<Item>>();
  final _cartItems = BehaviorSubject<Map<Item, int>>(seedValue: <Item, int>{});
  final _totalPrice = BehaviorSubject<int>(seedValue: 0);

  final _refreshController = PublishSubject<ItemsRefreshRequest>();
  final _additionController = PublishSubject<ItemsAdditionRequest>();
  final _removeController = PublishSubject<ItemsRemoveRequest>();

  List<Item> _itemsAdjusted(List<Item> items) =>
      UnmodifiableListView(items).map((item) {
        final count = _cart.items[item] ?? 0;
        item.addedToCart = count;
        return item;
      }).toList();

  updateTotalPrice() {
    final int price =
        _cart.items.entries.fold(0, (sum, e) => sum + e.key.price * e.value);
    _totalPrice.add(price);
  }

  void dispose() {
    _items.close();
    _cartItems.close();
    _refreshController.close();
    _additionController.close();
    _removeController.close();
    _totalPrice.close();
  }
}
