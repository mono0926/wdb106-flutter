import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider/provider.dart';
import 'package:wdb106_sample/main.dart';
import 'package:wdb106_sample/model/model.dart';

import '../../widgets/widgets.dart';
import '../cart_page/cart_page.dart';

class CartButton extends HookWidget {
  const CartButton();

  @override
  Widget build(BuildContext context) {
    return NavigationBarButton(
      text: useProvider(cartProvider.state).summary.state,
      onPressed: useProvider(cartProvider.state).summary.totalPrice == 0
          ? null
          : () => Navigator.of(context).push<void>(
                CupertinoPageRoute<void>(
                  builder: (context) => CartPage.wrapped(),
                  fullscreenDialog: true,
                ),
              ),
    );
  }
}
