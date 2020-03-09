import 'package:flutter/foundation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:wdb106_sample/model/model.dart';

import 'item_tile_state.dart';

export 'item_tile_state.dart';

class ItemTileController extends StateNotifier<ItemTileState>
    with LocatorMixin {
  ItemTileController({
    @required this.stock,
  }) : super(ItemTileState());

  final ItemStock stock;
  VoidCallback _cartControllerRemoveListener;

  CartController get _cartController => read();

  @override
  void initState() {
    _cartControllerRemoveListener = _cartController.addListener((cartState) {
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

  void addToCart() => _cartController.add(stock.item);

  @override
  void dispose() {
    _cartControllerRemoveListener();

    super.dispose();
  }
}
