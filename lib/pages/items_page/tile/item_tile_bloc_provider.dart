import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/widgets.dart';

import '../../../model/model.dart';
import 'item_tile_bloc.dart';

export 'item_tile_bloc.dart';

class ItemTileBlocProvider extends BlocProvider<ItemTileBloc> {
  ItemTileBlocProvider({
    @required ItemStock stock,
    @required Widget child,
  }) : super(
          key: ValueKey(stock.item.id),
          child: child,
          creator: (context, _bag) {
            final provider = ServiceProvider.of(context);
            return ItemTileBloc(
              stock: stock,
              cartStore: provider.cartStore,
            );
          },
        );

  static ItemTileBloc of(BuildContext context) => BlocProvider.of(context);
}
