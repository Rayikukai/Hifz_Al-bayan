import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constant.dart';
import 'index.dart';

// run the application
void main() {
  runApp(const MyApp());
}

// Root Widget
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

// Root state
class MyAppState extends State<MyApp> {
  @override
  void initState() {
    WidgetsBinding
      .instance
      .addPostFrameCallback((_) async {
        await readJson();
        await getSettings();
        }
      );
    super.initState();
  }

// Home Page layout
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hifz Al-bayan',
      theme: ThemeData(
        primarySwatch: MaterialColor(
          0xFF000000,
          {
            50: Color(0xFFE5E5E5),
            100: Color(0xFFBFBFBF),
            200: Color(0xFF999999),
            300: Color(0xFF737373),
            400: Color(0xFF4D4D4D),
            500: Color(0xFF262626),
            600: Color(0xFF222222),
            700: Color(0xFF1E1E1E),
            800: Color(0xFF1A1A1A),
            900: Color(0xFF141414),
          },
        ),
      ),
      home: const IndexPage(),
    );
  }
}
