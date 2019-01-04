import 'package:flutter/material.dart';

import '../../model/model.dart';
import 'cart_bloc.dart';

export '../../model/entities/cart_item.dart';
export 'cart_bloc.dart';

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
