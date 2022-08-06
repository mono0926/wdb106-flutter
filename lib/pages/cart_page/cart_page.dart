// TODO(mono): アニメーション
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/widgets/widgets.dart';

import 'cart_header.dart';
import 'cart_tile.dart';

class CartRoute extends GoRouteData {
  const CartRoute();

  @override
  Page<void> buildPage(BuildContext context) => const CupertinoPage(
        fullscreenDialog: true,
        child: CartPage(),
      );
}

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void pop() => Navigator.of(context).pop();
    ref.listen<bool>(cartProvider.select((s) => s.isEmpty), (_, shouldPop) {
      pop();
    });
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text('カート'),
        leading: NavigationBarButton(
          text: '閉じる',
          onPressed: pop,
        ),
      ),
      body: Column(
        children: const [
          CartHeader(),
          Expanded(child: _CartListView()),
        ],
      ),
    );
  }
}

class _CartListView extends ConsumerWidget {
  const _CartListView();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ids = ref.watch(cartProvider.select((s) => s.itemIds));
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: ids.length,
      itemBuilder: (_, index) => CartTile(id: ids[index]),
    );
  }
}
