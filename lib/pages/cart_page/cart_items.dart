import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';

import 'cart_tile.dart';

class CartItems extends HookWidget {
  const CartItems();
  @override
  Widget build(BuildContext context) {
    final items = useProvider(cartProvider.state).sortedItems;
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: items.map(
        (cartItem) {
          return CartTile(
            key: ValueKey(cartItem.item.id),
            cartItem: cartItem,
          );
        },
      ).toList(),
    );
  }
}
