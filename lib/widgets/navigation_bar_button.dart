import 'package:flutter/cupertino.dart';

class NavigationBarButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  NavigationBarButton({
    Key key,
    @required this.onPressed,
    @required String text,
  })  : child = Text(text),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: child,
      onPressed: onPressed,
      padding: EdgeInsets.zero,
    );
  }
}
