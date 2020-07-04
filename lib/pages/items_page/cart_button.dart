import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/pages/cart_page/cart_page.dart';
import 'package:wdb106_sample/widgets/widgets.dart';

class CartButton extends HookWidget {
  const CartButton();

  @override
  Widget build(BuildContext context) {
    final isEmpty = useProvider(
        cartProvider.state.select((s) => s.summary.totalPrice == 0));
    return NavigationBarButton(
      text: useProvider(cartProvider.state.select((s) => s.summary.state)),
      onPressed: isEmpty
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
