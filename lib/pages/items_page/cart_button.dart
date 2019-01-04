import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:wdb106_sample/pages/common/cart_bloc_provider.dart';

import '../../widgets/widgets.dart';
import '../cart_page/cart_page.dart';

class CartButton extends StatelessWidget {
  const CartButton();

  @override
  Widget build(BuildContext context) {
    final bloc = CartBlocProvider.of(context);
    return StreamBuilder<CartSummary>(
      initialData: bloc.cartSummary.value,
      stream: bloc.cartSummary,
      builder: (context, snap) {
        return NavigationBarButton(
          text: snap.data.state,
          onPressed: _handleTap(context, snap.data),
        );
      },
    );
  }

  VoidCallback _handleTap(BuildContext context, CartSummary summary) {
    if (summary.totalPrice == 0) {
      return null;
    }
    return () => Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (context) => const CartPage(),
            fullscreenDialog: true,
          ),
        );
  }
}
