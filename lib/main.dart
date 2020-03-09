import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:wdb106_sample/model/model.dart';

import 'app.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          Provider(create: (context) => GlobalKey<NavigatorState>()),
          Provider<ApiClient>(create: (context) => MockyApiClient()),
          StateNotifierProvider<ItemsController, ItemsState>(
            create: (context) => ItemsController(),
          ),
          StateNotifierProvider<CartController, CartState>(
            create: (context) => CartController(),
          ),
        ],
        child: const App(),
      ),
    );
