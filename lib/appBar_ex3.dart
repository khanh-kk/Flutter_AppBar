//This example shows how to listen to a nested Scrollable's scroll notification
//in a nested scroll view using the notificationPredicate property and
//use it to make scrolledUnderElevation take effect.

import 'package:flutter/material.dart';

class MyAppBar4 extends StatelessWidget {
  final List<String> titles = ['Cloud', 'Beach', 'Sunny'];
  MyAppBar4({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddColor = colorScheme.primary.withOpacity(0.05);
    final Color evenColor = colorScheme.primary.withOpacity(0.15);
    int tabCount = titles.length;
    return DefaultTabController(
      initialIndex: 1,
      length: tabCount,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Sample'),
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
          scrolledUnderElevation: 4.0,
          shadowColor: Theme.of(context).shadowColor,
          bottom: TabBar(
            labelColor: Colors.amber,
            tabs: [
              Tab(
                icon: const Icon(Icons.cloud_outlined),
                text: titles[0],
              ),
              Tab(
                icon: const Icon(Icons.beach_access_sharp),
                text: titles[1],
              ),
              Tab(
                icon: const Icon(Icons.brightness_5_sharp),
                text: titles[2],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  tileColor: index.isOdd ? oddColor : evenColor,
                  title: Text('${titles[0]} $index'),
                );
              },
            ),
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  tileColor: index.isOdd ? oddColor : evenColor,
                  title: Text('${titles[1]} $index'),
                );
              },
            ),
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  tileColor: index.isOdd ? oddColor : evenColor,
                  title: Text('${titles[2]} $index'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
