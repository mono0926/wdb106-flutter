import 'package:flutter/material.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';

final navigatorKeyProvider = Provider((ref) => GlobalKey<NavigatorState>());
final itemsProvider = StateNotifierProvider((ref) => ItemsController(ref));
final cartProvider = StateNotifierProvider((ref) => CartController());
final apiClient = Provider((ref) => MockyApiClient());
//final cartSummary = Computed((read) => read(cartProvider.state).summary);

void main() => runApp(
      const ProviderScope(
        child: App(),
      ),
    );
