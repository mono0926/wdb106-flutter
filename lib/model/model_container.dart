import 'package:flutter/widgets.dart';
import 'package:wdb106_sample/model/api.dart';

class ModelContainer extends InheritedWidget {
  final ApiClient apiClient;

  ModelContainer({
    @required this.apiClient,
    @required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

//  static ModelContainer of(BuildContext context) =>
//      context.inheritFromWidgetOfExactType(ModelContainer) as ModelContainer;

  // initState中のcontextからだと上のメソッドを使うと怒られ、
  // かつ特に変更監視の必要性も無いため。
  static ModelContainer of(BuildContext context) => context
      .ancestorInheritedElementForWidgetOfExactType(ModelContainer)
      .widget as ModelContainer;
}
