import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/model/item.dart';

@immutable
class ItemCellModel {
  final Item item;
  final VoidCallback onPressed;
  final String infoLabel;
  final String buttonLabel;
  final Color buttonColor;

  const ItemCellModel({
    @required this.item,
    @required this.onPressed,
    @required this.infoLabel,
    @required this.buttonLabel,
    @required this.buttonColor,
  });
}

class ItemCell extends StatelessWidget {
  final ItemCellModel model;

  static const _indent = 16.0;
  static const _verticalMargin = SizedBox(height: 8);
  static const _horizontalMargin = SizedBox(width: 8);
  static const _textStyleMain = TextStyle(fontSize: 18);

  TextStyle get _textStyleSub => TextStyle(
        fontSize: 13,
        color: Colors.grey[600],
      );

  const ItemCell({
    @required Key key,
    @required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildBody(context),
        const Divider(indent: _indent),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: _indent),
      height: 96,
      child: Row(
        children: [
          _buildImage(),
          _horizontalMargin,
          _buildItemInfo(),
          _buildButton(context)
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Image.network(
      model.item.imageUrl,
      fit: BoxFit.cover,
    );
  }

  Widget _buildItemInfo() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.item.title,
            style: _textStyleMain,
          ),
          _verticalMargin,
          Text(
            model.item.priceWithUnit,
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
  }

  Widget _buildButton(BuildContext context) {
    return CupertinoButton(
      child: Text(
        model.buttonLabel,
        style: TextStyle(color: model.buttonColor),
      ),
      onPressed: model.onPressed,
    );
  }
}
