import 'package:flutter/material.dart';

import 'cart_bloc_provider.dart';

class CartHeader extends StatelessWidget {
  const CartHeader();

  @override
  Widget build(BuildContext context) {
    final bloc = CartBlocProvider.of(context);
    return Container(
      height: 55,
      color: Colors.grey[300],
      child: Center(
        child: StreamBuilder<CartSummary>(
          initialData: bloc.cartSummary.value,
          stream: bloc.cartSummary,
          builder: (context, snap) {
            return Text(
              snap.data.totalPriceState,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            );
          },
        ),
      ),
    );
  }
}
