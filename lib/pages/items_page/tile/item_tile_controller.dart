import 'package:flutter/foundation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:wdb106_sample/main.dart';
import 'package:wdb106_sample/model/model.dart';

import 'item_tile_state.dart';

export 'item_tile_state.dart';

class ItemTileController extends StateNotifier<ItemTileState> {
  ItemTileController(
    this._ref, {
    @required this.stock,
  }) : super(ItemTileState()) {
    _cartControllerRemoveListener =
        _ref.read(cartProvider).addListener((cartState) {
      final cartItem = cartState.sortedItems.firstWhere(
        (x) => x.item == stock.item,
        orElse: () => null,
      );
      final cartItemQuantity = cartItem?.quantity ?? 0;
      state = state.copyWith(
        quantity: stock.quantity - cartItemQuantity,
      );
    });
  }

  final ProviderReference _ref;

  final ItemStock stock;
  VoidCallback _cartControllerRemoveListener;

  void addToCart() => _ref.read(cartProvider).add(stock.item);

  @override
  void dispose() {
    _cartControllerRemoveListener();

    super.dispose();
  }
}
