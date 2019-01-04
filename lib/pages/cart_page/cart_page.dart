// TODO: アニメーション
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/pages/common/cart_bloc_provider.dart';

import '../../widgets/widgets.dart';
import 'cart_header.dart';
import 'cart_items.dart';

class CartPage extends StatefulWidget {
  const CartPage();
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  StreamSubscription _streamSubscription;

  @override
  void initState() {
    super.initState();
    final bloc = CartBlocProvider.of(context);
    _streamSubscription = bloc.cartSummary.listen((data) {
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
