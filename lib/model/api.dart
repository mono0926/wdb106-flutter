import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:wdb106_sample/model/item.dart';

abstract class ApiClient {
  Future<List<Item>> getItems();
}

@immutable
class MockyApiClient implements ApiClient {
  final client = Client();

  @override
  Future<List<Item>> getItems() async {
    final result =
        await client.get('http://www.mocky.io/v2/5b7812292e00005200864c0d');
    final json =
        (await jsonDecode(result.body) as List).cast<Map<String, dynamic>>();
    final list = json.map((j) => Item.fromJSON(j)).toList();
    return list;
  }
}
