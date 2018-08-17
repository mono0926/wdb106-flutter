import 'package:flutter/material.dart';
import 'package:wdb106_sample/bloc/items_bloc.dart';

class ItemsProvider extends InheritedWidget {
  final ItemsBloc bloc;

  ItemsProvider({
    @required Widget child,
    @required this.bloc,
    Key key,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(ItemsProvider oldWidget) => oldWidget.bloc != bloc;

  static ItemsBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(ItemsProvider) as ItemsProvider)
          .bloc;
}
