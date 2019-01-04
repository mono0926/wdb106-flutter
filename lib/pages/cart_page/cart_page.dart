import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/model/cart_item.dart';
import 'package:wdb106_sample/pages/cart_page/cart_bloc_provider.dart';
import 'package:wdb106_sample/pages/cart_page/cart_tile.dart';

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
        appBar: _buildNavigationBar(context),
        body: Column(
          children: [
            _buildHeader(context),
            Expanded(child: _buildItems(context)),
          ],
        ));
  }

  PreferredSizeWidget _buildNavigationBar(BuildContext context) {
    return CupertinoNavigationBar(
      middle: const Text('カート'),
      leading: CupertinoButton(
        child: const Text('閉じる'),
        padding: EdgeInsets.zero,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
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

  Widget _buildItems(BuildContext context) {
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

  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }
}
