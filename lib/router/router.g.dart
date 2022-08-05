// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $itemsRoute,
    ];

GoRoute get $itemsRoute => GoRouteData.$route(
      path: '/',
      factory: $ItemsRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'cart',
          factory: $CartRouteExtension._fromState,
        ),
      ],
    );

extension $ItemsRouteExtension on ItemsRoute {
  static ItemsRoute _fromState(GoRouterState state) => const ItemsRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $CartRouteExtension on CartRoute {
  static CartRoute _fromState(GoRouterState state) => const CartRoute();

  String get location => GoRouteData.$location(
        '/cart',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
