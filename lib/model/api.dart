import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:wdb106_sample/model/item_stock.dart';

abstract class ApiClient {
  Future<List<ItemStock>> getItemStocks();
}

@immutable
class MockyApiClient implements ApiClient {
  final client = Client();

  @override
  Future<List<ItemStock>> getItemStocks() async {
    final result =
        await client.get('http://www.mocky.io/v2/5c2df3b92f00008e2f175350');
    final json =
        (await jsonDecode(result.body) as List).cast<Map<String, dynamic>>();
    final list = json.map((j) => ItemStock.fromJSON(j)).toList();
    return list;
  }
}
