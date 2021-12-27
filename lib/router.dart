import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/pages/cart_page/cart_page.dart';
import 'package:wdb106_sample/pages/items_page/items_page.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    routes: [
      GoRoute(
          path: '/',
          builder: (context, state) => const ItemsPage(),
          routes: []),
      GoRoute(
        path: CartPage.routeName,
        pageBuilder: (context, state) => const CupertinoPage(
          fullscreenDialog: true,
          child: CartPage(),
        ),
      ),
    ],
  ),
);
