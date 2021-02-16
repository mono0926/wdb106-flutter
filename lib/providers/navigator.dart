import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final navigatorKeyProvider = Provider((_) => GlobalKey<NavigatorState>());

extension NavigatorStateEx on NavigatorState {
  BuildContext get descendantContext => overlay!.context;
}
