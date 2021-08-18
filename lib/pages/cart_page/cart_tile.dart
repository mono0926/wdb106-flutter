import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/widgets/widgets.dart';

class CartTile extends ConsumerWidget {
  CartTile({
    required this.id,
  }) : super(key: ValueKey(id));

  final String id;

  static const _indent = 16.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final item = ref.watch(itemsProviders(id).select((s) => s.data!.value));
    final quantity =
        ref.watch(cartController.select((s) => s.itemMap[id] ?? 0));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: _indent),
          height: 96,
          child: Row(
            children: [
              ItemImage(imageUrl: item.imageUrl),
              const SizedBox(width: 8),
              ItemInfo(
                title: item.title,
                price: item.priceWithUnit,
                info: Text(
                  '数量 $quantity',
                  style: theme.textTheme.caption,
                ),
              ),
              CupertinoButton(
                onPressed: () {
                  ref.read(cartController.notifier).delete(item.id);
                },
                child: Text(
                  '削除',
                  style: TextStyle(
                    color: Theme.of(context).errorColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(indent: _indent),
      ],
    );
  }
}
