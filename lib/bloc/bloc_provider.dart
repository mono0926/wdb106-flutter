import 'package:flutter/material.dart';

abstract class BlocBase {
  void dispose();
}

class BlocProvider<T extends BlocBase> extends InheritedWidget {
  final T bloc;

  BlocProvider({
    @required Widget child,
    @required this.bloc,
    Key key,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(BlocProvider oldWidget) => oldWidget.bloc != bloc;

  static T of<T extends BlocBase>(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(_typeOf<BlocProvider<T>>())
              as BlocProvider<T>)
          .bloc;

  static Type _typeOf<T>() => T;
}
