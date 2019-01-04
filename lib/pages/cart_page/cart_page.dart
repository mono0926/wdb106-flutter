import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/pages/cart_page/cart_bloc_provider.dart';
import 'package:wdb106_sample/pages/cart_page/cart_header.dart';
import 'package:wdb106_sample/pages/cart_page/cart_items.dart';
import 'package:wdb106_sample/widgets/widgets.dart';

// TODO: アニメーション
class CartPage extends StatefulWidget {
  static Widget withDependencies() {
    return CartBlocProvider(
      child: const CartPage._(),
    );
  }

  const CartPage._();
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  StreamSubscription _streamSubscription;

  @override
  void initState() {
    super.initState();
    final bloc = CartBlocProvider.of(context);
    _streamSubscription =
        bloc.cartSummary.skipWhile((x) => x.totalPrice == 0).listen((data) {
      if (data.totalPrice <= 0) {
        Navigator.of(context).pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: const Text('カート'),
          leading: NavigationBarButton(
            text: '閉じる',
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Column(
          children: [
            const CartHeader(),
            const Expanded(child: CartItems()),
          ],
        ));
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }
}
