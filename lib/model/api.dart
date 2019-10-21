import 'dart:convert';

import 'package:http/http.dart';

import 'model.dart';

// ignore: one_member_abstracts
abstract class ApiClient {
  Future<List<ItemStock>> getItemStocks();
}

@immutable
class MockyApiClient implements ApiClient {
  final Client client = Client();

  @override
  Future<List<ItemStock>> getItemStocks() async {
    final result =
        await client.get('http://www.mocky.io/v2/5c2df3b92f00008e2f175350');
    final json =
        (await jsonDecode(result.body) as List).cast<Map<String, dynamic>>();
    final list = json.map((j) => ItemStock.fromJson(j)).toList();
    return list;
  }
}
