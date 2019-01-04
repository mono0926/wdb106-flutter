import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/pages/cart_page/cart_bloc_provider.dart';
import 'package:wdb106_sample/pages/cart_page/cart_page.dart';

class CartButton extends StatelessWidget {
  static Widget withDependencies() {
    return CartBlocProvider(
      child: const CartButton._(),
    );
  }

  const CartButton._();

  @override
  Widget build(BuildContext context) {
    final bloc = CartBlocProvider.of(context);
    return StreamBuilder<CartSummary>(
      initialData: bloc.cartSummary.value,
      stream: bloc.cartSummary,
      builder: (context, snap) {
        return CupertinoButton(
          onPressed: snap.data.totalPrice == 0
              ? null
              : () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) {
                        return CartPage.withDependencies();
                      },
                      fullscreenDialog: true,
                    ),
                  );
                },
          padding: EdgeInsets.zero,
          child: Text(snap.data.state),
        );
      },
    );
  }
}
