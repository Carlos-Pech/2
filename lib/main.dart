import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:my_anwensome_name_app/pages/FavoritesPage.dart';
import 'package:my_anwensome_name_app/pages/my_home_page.dart';
import 'package:provider/provider.dart';

import 'state/my_app_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}
