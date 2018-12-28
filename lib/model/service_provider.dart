import 'package:flutter/widgets.dart';
import 'package:wdb106_sample/model/api.dart';

@immutable
class ServiceProvider extends InheritedWidget {
  final ApiClient apiClient;

  const ServiceProvider({
    @required this.apiClient,
    @required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static ServiceProvider of(BuildContext context) => context
      .ancestorInheritedElementForWidgetOfExactType(ServiceProvider)
      .widget as ServiceProvider;
}
