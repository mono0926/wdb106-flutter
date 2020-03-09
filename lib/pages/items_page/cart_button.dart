import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:wdb106_sample/model/model.dart';

import '../../widgets/widgets.dart';
import '../cart_page/cart_page.dart';

class CartButton extends StatelessWidget {
  const CartButton();

  @override
  Widget build(BuildContext context) {
    return NavigationBarButton(
      text: context.select((CartState s) => s.summary.state),
      onPressed: context.watch<CartState>().summary.totalPrice == 0
          ? null
          : () => Navigator.of(context).push<void>(
                CupertinoPageRoute<void>(
                  builder: (context) => const CartPage(),
                  fullscreenDialog: true,
                ),
              ),
    );
  }
}
