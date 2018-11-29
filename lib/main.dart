import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/bloc/items_bloc_provider.dart';
import 'package:wdb106_sample/model/api.dart';
import 'package:wdb106_sample/model/model_container.dart';
import 'package:wdb106_sample/screens/item_list.dart';

void main() => runApp(
      ModelContainer(
        apiClient: MockyApiClient(),
        child: App(),
      ),
    );

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ItemsBlocProvider(
      context: context,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: ItemList(),
      ),
    );
  }
}
