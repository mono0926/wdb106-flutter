import 'package:flutter/widgets.dart';

import 'cart_bloc_provider.dart';
import 'cart_tile.dart';

class CartItems extends StatelessWidget {
  const CartItems();
  @override
  Widget build(BuildContext context) {
    final bloc = CartBlocProvider.of(context);
    return StreamBuilder<List<CartItem>>(
      initialData: bloc.cartItems.value,
      stream: bloc.cartItems,
      builder: (context, snap) {
        return ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: snap.data.map(
            (cartItem) {
              return CartTile(
                key: ValueKey(cartItem.item.id),
                cartItem: cartItem,
              );
            },
          ).toList(),
        );
      },
    );
  }
}
