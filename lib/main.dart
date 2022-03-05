import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/pages/navigation/home.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/constants.dart';
import 'pages/home_main.dart';

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
          iconTheme:
              const IconThemeData(color: black, size: size_ex_lg_24 * 1.2),
          inputDecorationTheme: const InputDecorationTheme(iconColor: black),
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: pink,
              ),
          textTheme: TextTheme(
            headline2: GoogleFonts.montserrat(
                fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
            headline4: GoogleFonts.dmSans(
                fontSize: 18, fontWeight: FontWeight.bold, color: black),
            headline5: GoogleFonts.dmSans(
                fontSize: 16, fontWeight: FontWeight.w500, color: pink),
          )),
      home: const MyHomePage(),
    );
  }
}
