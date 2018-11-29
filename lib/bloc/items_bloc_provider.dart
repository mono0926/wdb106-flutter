import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:wdb106_sample/bloc/items_bloc.dart';
import 'package:wdb106_sample/model/service_provider.dart';

class ItemsBlocProvider extends BlocProvider<ItemsBloc> {
  ItemsBlocProvider({
    @required Widget child,
  }) : super(
          child: child,
          creator: (context) {
            final container = ServiceProvider.of(context);
            return ItemsBloc(client: container.apiClient);
          },
        );

  static ItemsBloc of(BuildContext context) => BlocProvider.of(context);
}
