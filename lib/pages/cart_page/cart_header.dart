import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wdb106_sample/pages/common/common.dart';

class CartHeader extends StatelessWidget {
  const CartHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: Colors.grey[300],
      child: Center(
        child: Text(
          context.select((CartState s) => s.summary.totalPriceState),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
