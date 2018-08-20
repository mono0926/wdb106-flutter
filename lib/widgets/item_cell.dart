import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/model/item.dart';

class ItemCellModel {
  final Item item;
  final VoidCallback onPressed;
  final String infoLabel;
  final String buttonLabel;
  final Color buttonColor;

  ItemCellModel({
    @required this.item,
    @required this.onPressed,
    @required this.infoLabel,
    @required this.buttonLabel,
    @required this.buttonColor,
  });
}

class ItemCell extends StatelessWidget {
  final ItemCellModel model;

  const ItemCell({
    @required this.model,
    @required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildBody(context),
          Divider(indent: _indent),
        ],
      );

  double get _indent => 16.0;

  Widget get _verticalMargin => const SizedBox(height: 8.0);

  Widget get _horizontalMargin => const SizedBox(width: 8.0);

  TextStyle get _textStyleMain => TextStyle(fontSize: 18.0);

  TextStyle get _textStyleSub => TextStyle(
        fontSize: 13.0,
        color: Colors.grey[600],
      );

  Widget _buildBody(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: _indent),
        height: 96.0,
        child: Row(
          children: <Widget>[
            _buildImage(),
            _horizontalMargin,
            _buildItemInfo(),
            _buildButton(context)
          ],
        ),
      );

  Widget _buildButton(BuildContext context) => CupertinoButton(
        child: Text(
          model.buttonLabel,
          style: TextStyle(color: model.buttonColor),
        ),
        onPressed: model.onPressed,
      );

  Widget _buildItemInfo() => Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              model.item.title,
              style: _textStyleMain,
            ),
            _verticalMargin,
            Text(
              '${model.item.price}円+税',
              style: _textStyleMain,
            ),
            _verticalMargin,
            Text(
              model.infoLabel,
              style: _textStyleSub,
            ),
          ],
        ),
      );

  Widget _buildImage() => Image.network(
        model.item.imageUrl,
        fit: BoxFit.cover,
      );
}
