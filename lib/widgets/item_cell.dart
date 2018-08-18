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
          buildBody(context),
          Divider(indent: 16.0),
        ],
      );

  Widget buildBody(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        height: 96.0,
        child: Row(
          children: <Widget>[
            buildImage(),
            SizedBox(width: 8.0),
            buildItemInfo(),
            buildButton(context)
          ],
        ),
      );

  Widget buildButton(BuildContext context) => CupertinoButton(
        child: Text(
          model.buttonLabel,
          style: TextStyle(color: model.buttonColor),
        ),
        onPressed: model.onPressed,
      );

  Widget buildItemInfo() => Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              model.item.title,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '${model.item.price}円+税',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              model.infoLabel,
              style: TextStyle(
                fontSize: 13.0,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      );

  Widget buildImage() => Image.network(
        model.item.imageUrl,
        fit: BoxFit.cover,
      );
}
