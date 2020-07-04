import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';

class CartHeader extends HookWidget {
  const CartHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: Colors.grey[300],
      child: Center(
        child: Text(
          useProvider(cartProvider.state).summary.totalPriceState,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
