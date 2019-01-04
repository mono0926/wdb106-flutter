import 'package:flutter/widgets.dart';

import 'model.dart';

@immutable
class ServiceProvider extends InheritedWidget {
  final ApiClient apiClient;
  final itemStore = ItemStore();
  final cartStore = CartStore();

  ServiceProvider({
    Key key,
    @required this.apiClient,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static ServiceProvider of(BuildContext context) => context
      .ancestorInheritedElementForWidgetOfExactType(ServiceProvider)
      .widget as ServiceProvider;
}
