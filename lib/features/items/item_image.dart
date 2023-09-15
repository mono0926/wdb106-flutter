import 'package:flutter/widgets.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
    );
  }
}
