import 'package:flutter/widgets.dart';
import 'package:wdb106_sample/model/api.dart';
import 'package:wdb106_sample/model/cart_store.dart';
import 'package:wdb106_sample/model/item_store.dart';

export 'package:wdb106_sample/model/api.dart';
export 'package:wdb106_sample/model/cart_store.dart';
export 'package:wdb106_sample/model/item_store.dart';

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
