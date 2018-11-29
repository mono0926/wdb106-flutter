import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/bloc/items_bloc_provider.dart';
import 'package:wdb106_sample/model/api.dart';
import 'package:wdb106_sample/model/service_provider.dart';
import 'package:wdb106_sample/screens/item_list.dart';

void main() => runApp(
      ServiceProvider(
        apiClient: MockyApiClient(),
        child: App(),
      ),
    );

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ItemsBlocProvider(
      child: MaterialApp(
        home: ItemList(),
      ),
    );
  }
}
