import 'package:flutter/widgets.dart';

import '../../model/model.dart';
import 'items_bloc.dart';

export 'items_bloc.dart';

class ItemsBlocProvider extends BlocProvider<ItemsBloc> {
  ItemsBlocProvider({
    @required Widget child,
  }) : super(
          child: child,
          creator: (context, _bag) {
            final provider = ServiceProvider.of(context);
            return ItemsBloc(
              client: provider.apiClient,
              itemStore: provider.itemStore,
            );
          },
        );

  static ItemsBloc of(BuildContext context) => BlocProvider.of(context);
}
