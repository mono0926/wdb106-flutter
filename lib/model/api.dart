import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

import 'model.dart';

final apiClient = Provider((ref) => ApiClient());

class ApiClient {
  final Client _client = Client();

  Future<List<ItemStock>> getItemStocks() async {
    final result = await _client.get(
      'http://www.mocky.io/v2/5c2df3b92f00008e2f175350',
    );
    final json =
        (await jsonDecode(result.body) as List).cast<Map<String, dynamic>>();
    final list = json
        .map((j) => ItemStock(
              item: Item.fromJson(j),
              quantity: j['quantity'] as int,
            ))
        .toList();
    return list;
  }
}
