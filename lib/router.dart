import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'features/cart/cart.dart';
import 'features/items/items.dart';

part 'router.g.dart';

@riverpod
Raw<GoRouter> router(RouterRef ref) => GoRouter(
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
