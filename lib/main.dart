import 'package:app_bar_ex/app_bar_actions.dart';
import 'package:app_bar_ex/app_bar_ex2.dart';
import 'package:flutter/material.dart';

final List<int> _items = List<int>.generate(51, (index) => index);
void main() {
  runApp(const AppBarApp());
}

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      // home: AppBarActions(),
      home: MyAppBar2(),
    );
  }
}
