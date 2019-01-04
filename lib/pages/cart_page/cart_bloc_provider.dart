import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:wdb106_sample/model/service_provider.dart';
import 'package:wdb106_sample/pages/cart_page/cart_bloc.dart';

export 'package:wdb106_sample/model/cart_item.dart';
export 'package:wdb106_sample/pages/cart_page/cart_bloc.dart';

class CartBlocProvider extends BlocProvider<CartBloc> {
  CartBlocProvider({
    @required Widget child,
  }) : super(
          child: child,
          creator: (context, _bag) {
            final provider = ServiceProvider.of(context);
            return CartBloc(cartStore: provider.cartStore);
          },
        );

  static CartBloc of(BuildContext context) => BlocProvider.of(context);
}
