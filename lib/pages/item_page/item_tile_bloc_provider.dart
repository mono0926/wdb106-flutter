import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:wdb106_sample/model/service_provider.dart';
import 'package:wdb106_sample/pages/item_page/item_tile_bloc.dart';
import 'package:wdb106_sample/pages/item_page/items_bloc.dart';

class ItemTileBlocProvider extends BlocProvider<ItemTileBloc> {
  ItemTileBlocProvider({
    @required ItemStock stock,
    @required Widget child,
  }) : super(
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
