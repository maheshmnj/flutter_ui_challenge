import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/pages/homepage.dart';

import 'constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: const IconThemeData(color: black, size: size_ex_lg_24 * 1.2),
        inputDecorationTheme: const InputDecorationTheme(iconColor: black),
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: pink,
            ),
      ),
      home: const MyHomePage(),
    );
  }
}
