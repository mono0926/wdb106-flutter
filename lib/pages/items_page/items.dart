import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/main.dart';
import 'package:wdb106_sample/model/model.dart';

import 'tile/item_tile.dart';

class Items extends HookWidget {
  const Items();

  @override
  Widget build(BuildContext context) {
    final items = useProvider(itemsProvider.state);
    return items.isLoading
        ? const Center(child: CircularProgressIndicator())
        : ListView(
            padding: const EdgeInsets.symmetric(vertical: 8),
            children: items.stocks
                .map(
                  ItemTile.wrapped,
                )
                .toList(),
          );
  }
}
