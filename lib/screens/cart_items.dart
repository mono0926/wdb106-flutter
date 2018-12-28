import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/bloc/items_bloc.dart';
import 'package:wdb106_sample/bloc/items_bloc_provider.dart';
import 'package:wdb106_sample/model/cart_item.dart';
import 'package:wdb106_sample/widgets/item_cell.dart';

class CartItems extends StatefulWidget {
  const CartItems();
  @override
  _CartItemsState createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  StreamSubscription _streamSubscription;

  @override
  Widget build(BuildContext context) => const _CartItems();

  @override
  void initState() {
    super.initState();
    final bloc = ItemsBlocProvider.of(context);
    _streamSubscription = bloc.cartSummary.listen((data) {
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
    final bloc = ItemsBlocProvider.of(context);
    return Scaffold(
        appBar: _buildNavigationBar(context),
        body: Column(
          children: <Widget>[
            _buildHeader(bloc),
            _buildItems(bloc),
          ],
        ));
  }

  Widget _buildItems(ItemsBloc bloc) {
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
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                children: snap.data
                    .map(
                      (cartItem) => ItemCell(
                            model: ItemCellModel(
                                item: cartItem.item,
                                onPressed: () {
                                  final bloc = ItemsBlocProvider.of(context);
                                  bloc.deletion.add(cartItem.item);
                                },
                                buttonColor: Theme.of(context).errorColor,
                                buttonLabel: '削除',
                                infoLabel: '数量 ${cartItem.quantity}'),
                            key: Key(cartItem.item.id.toString()),
                          ),
                    )
                    .toList(),
              );
          }
        },
      ),
    );
  }

  Widget _buildHeader(ItemsBloc bloc) {
    return Container(
      height: 55.0,
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
                fontSize: 18.0,
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
