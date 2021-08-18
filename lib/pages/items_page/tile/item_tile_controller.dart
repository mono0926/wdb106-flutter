import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:wdb106_sample/model/model.dart';

import 'item_tile_state.dart';

export 'item_tile_state.dart';

final itemTileProviders = StateNotifierProvider.autoDispose
    .family<ItemTileController, ItemTileState, int>(
        (ref, id) => ItemTileController(
              ref.read,
              id: id,
            ));

class ItemTileController extends StateNotifier<ItemTileState> {
  ItemTileController(
    this._read, {
    required this.id,
  }) : super(ItemTileState()) {
    _cartControllerRemoveListener = _read(cartProvider.notifier).addListener(
      (cartState) {
        final cartItem = cartState.cartItem(stock.item);
        final cartItemQuantity = cartItem?.quantity ?? 0;
        state = state.copyWith(
          quantity: stock.quantity - cartItemQuantity,
        );
      },
    );
  }

  final Reader _read;

  final int id;
  late final VoidCallback _cartControllerRemoveListener;

  ItemStock get stock => (_read(itemsFetcher).data?.value ?? []).firstWhere(
        (s) => s.item.id == id,
      );

  void addToCart() => _read(cartProvider.notifier).add(stock.item);

  @override
  void dispose() {
    _cartControllerRemoveListener();

    super.dispose();
  }
}
