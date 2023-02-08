import 'package:flutter/material.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                ..removeCurrentSnackBar()
                ..showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));

// add MaterialBanner
              ScaffoldMessenger.of(context)
                ..removeCurrentMaterialBanner()
                ..showMaterialBanner(
                  MaterialBanner(
                    content: const Text('This is Material Banner'),
                    actions: <Widget>[
                      const TextButton(
                        onPressed: null,
                        child: Text('Open'),
                      ),
                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        },
                        child: const Text('Dismiss'),
                      )
                    ],
                  ),
                );
            },
            icon: const Icon(Icons.add_alert),
            tooltip: 'show SnackBar',
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const NextPage()));
            },
            icon: const Icon(Icons.navigate_next),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'This is home page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next page'),
      ),
      body: const Center(
        child: Text(
          'This is next page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
