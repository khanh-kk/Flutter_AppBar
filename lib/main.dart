import 'package:app_bar_ex/app_bar_actions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppBarApp());
}

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarActions(),
    );
  }
}
