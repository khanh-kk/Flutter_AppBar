import 'package:app_bar_ex/appBar_textButton_action.dart';
import 'package:flutter/material.dart';

final List<int> _items = List<int>.generate(51, (index) => index);
void main() {
  runApp(const AppBarApp());
}

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData(
      //   colorSchemeSeed: const Color(0xff6750a4),
      //   useMaterial3: true,
      // ),
      // home: AppBarActions(),
      // home: const MyAppBar2(),
      home: MyAppBar3(),
    );
  }
}
