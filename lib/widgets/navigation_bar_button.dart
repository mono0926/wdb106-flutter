import 'package:flutter/cupertino.dart';

class NavigationBarButton extends StatelessWidget {
  NavigationBarButton({
    super.key,
    @required this.onPressed,
    required String text,
  })  : child = Text(text);

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: child,
    );
  }
}
