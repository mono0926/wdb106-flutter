import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cart_price.dart';

class CartHeader extends ConsumerWidget {
  const CartHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 55,
      color: Colors.grey[300],
      child: Center(
        child: Text(
          ref.watch(cartPriceProvider.select((s) => s.label)),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
