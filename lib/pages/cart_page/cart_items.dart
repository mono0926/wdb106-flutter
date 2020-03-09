import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:wdb106_sample/model/model.dart';

import 'cart_tile.dart';

class CartItems extends StatelessWidget {
  const CartItems();
  @override
  Widget build(BuildContext context) {
    final items = context.select((CartState s) => s.sortedItems);
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
