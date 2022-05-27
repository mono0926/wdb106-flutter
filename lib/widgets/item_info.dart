import 'package:flutter/material.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    super.key,
    required this.title,
    required this.price,
    required this.info,
  });

  final String title;
  final String price;
  final Widget info;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyleMain = theme.textTheme.subtitle1;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textStyleMain,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              price,
              style: textStyleMain,
            ),
          ),
          info,
        ],
      ),
    );
  }
}
