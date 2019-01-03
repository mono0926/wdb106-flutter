import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/model/cart_item.dart';
import 'package:wdb106_sample/pages/cart_page/cart_bloc_provider.dart';
import 'package:wdb106_sample/pages/cart_page/cart_tile.dart';
import 'package:wdb106_sample/widgets/item_cell.dart';

// TODO: アニメーション
class CartPage extends StatefulWidget {
  const CartPage();
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  StreamSubscription _streamSubscription;

  @override
  Widget build(BuildContext context) => const _CartItems();

  @override
  void initState() {
    super.initState();
    final bloc = CartBlocProvider.of(context);
    _streamSubscription = bloc.cartSummary.skip(1).listen((data) {
      if (data.totalPrice <= 0) {
        Navigator.of(context).pop();
      }
    });
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }
}

class _CartItems extends StatelessWidget {
  const _CartItems();
  @override
  Widget build(BuildContext context) {
    final bloc = CartBlocProvider.of(context);
    return Scaffold(
        appBar: _buildNavigationBar(context),
        body: Column(
          children: [
            _buildHeader(bloc),
            _buildItems(bloc),
          ],
        ));
  }

  Widget _buildItems(CartBloc bloc) {
    return Expanded(
      child: StreamBuilder<List<CartItem>>(
        initialData: bloc.cartItems.value,
        stream: bloc.cartItems,
        builder: (context, snap) {
          switch (snap.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return const Center(child: CircularProgressIndicator());
            case ConnectionState.active:
            case ConnectionState.done:
              return ListView(
                padding: const EdgeInsets.symmetric(vertical: 8),
                children: snap.data.map(
                  (cartItem) {
                    final item = cartItem.item;
                    return CartTile(
                      key: ValueKey(item.id),
                      item: item,
                    );
                    return ItemCell(
                      // TODO: 撤廃
                      model: ItemCellModel(
                          item: cartItem.item,
                          onPressed: () {
                            final bloc = CartBlocProvider.of(context);
                            bloc.deletion.add(cartItem.item);
                          },
                          buttonColor: Theme.of(context).errorColor,
                          buttonLabel: '削除',
                          infoLabel: '数量 ${cartItem.quantity}'),
                      key: Key(cartItem.item.id.toString()),
                    );
                  },
                ).toList(),
              );
          }
        },
      ),
    );
  }

  Widget _buildHeader(CartBloc bloc) {
    return Container(
      height: 55,
      color: Colors.grey[300],
      child: Center(
        child: StreamBuilder<CartSummary>(
          stream: bloc.cartSummary,
          builder: (context, snap) {
            if (!snap.hasData) {
              return const Text('-');
            }
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
}
