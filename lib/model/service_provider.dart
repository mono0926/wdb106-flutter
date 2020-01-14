import 'package:flutter/widgets.dart';

import 'model.dart';

@immutable
class ServiceProvider extends InheritedWidget {
  ServiceProvider({
    Key key,
    @required this.apiClient,
    @required Widget child,
  }) : super(key: key, child: child);

  final ApiClient apiClient;
  final ItemStore itemStore = ItemStore();
  final CartStore cartStore = CartStore();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static ServiceProvider of(BuildContext context) =>
      context.getElementForInheritedWidgetOfExactType<ServiceProvider>().widget
          as ServiceProvider;
}
