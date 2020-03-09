import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wdb106_sample/model/model.dart';

import 'tile/item_tile.dart';

class Items extends StatelessWidget {
  const Items();

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
