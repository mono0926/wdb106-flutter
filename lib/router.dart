import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wdb106_sample/pages/cart_page/cart_page.dart';
import 'package:wdb106_sample/pages/items_page/items_page.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) => GoRouter(
      routes: $appRoutes,
      debugLogDiagnostics: kDebugMode,
    );

@TypedGoRoute<ItemsRoute>(
  path: '/',
  routes: [
    TypedGoRoute<CartRoute>(path: 'cart'),
  ],
)
class ItemsRoute extends GoRouteData {
  const ItemsRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => const ItemsPage();
}
