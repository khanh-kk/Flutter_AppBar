// cause: If using TextButton as actions of AppBar, it will not appear
// => using colorScheme.onPrimary as foregroundColor of TextButton
import 'package:flutter/material.dart';

class MyAppBar3 extends StatelessWidget {
  const MyAppBar3({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle btnStyle = TextButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            style: btnStyle,
            onPressed: () {},
            child: const Text('Action 1'),
          ),
          TextButton(
            style: btnStyle,
            onPressed: () {},
            child: const Text('Action 2'),
          ),
        ],
      ),
    );
  }
}
