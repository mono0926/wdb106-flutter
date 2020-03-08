import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:wdb106_sample/pages/items_page/items_controller/items_state.dart';

import 'items_controller/items_controller.dart';
import 'tile/item_tile.dart';

class Items extends StatelessWidget {
  const Items._();

  static Widget wrapped() {
    return StateNotifierProvider<ItemsController, ItemsState>(
      create: (context) => ItemsController()..initialize(),
      child: const Items._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return context.select((ItemsState s) => s.isLoading)
        ? const Center(child: CircularProgressIndicator())
        : ListView(
            padding: const EdgeInsets.symmetric(vertical: 8),
            children: context
                .select((ItemsState s) => s.stocks)
                .map(
                  ItemTile.wrapped,
                )
                .toList(),
          );
  }
}
