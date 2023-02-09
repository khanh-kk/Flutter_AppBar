//AppBar widget with the shadowColor and scrolledUnderElevation

import 'package:flutter/material.dart';

final List<int> _items = List<int>.generate(51, (index) => index);

class MyAppBar2 extends StatefulWidget {
  const MyAppBar2({super.key});

  @override
  State<MyAppBar2> createState() => _MyAppBar2State();
}

class _MyAppBar2State extends State<MyAppBar2> {
  bool _shadowColor = false;
  double? _scrolledUnderElevator;
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar demo ShadowColor'),
        scrolledUnderElevation: _scrolledUnderElevator,
        shadowColor: _shadowColor ? Theme.of(context).colorScheme.shadow : null,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: _items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Center(
              child: Text(
                'Scroll to see the Appbar in effect.',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
            );
          }

          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: _items[index].isOdd ? oddItemColor : evenItemColor,
            ),
            child: Text('Item $index'),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: OverflowBar(
            overflowAlignment: OverflowBarAlignment.center,
            // alignment: MainAxisAlignment.center,
            overflowSpacing: 5.0,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    _shadowColor = !_shadowColor;
                  });
                },
                icon: Icon(
                    _shadowColor ? Icons.visibility_off : Icons.visibility),
                label: const Text('Shadow color'),
              ),
              const SizedBox(
                width: 5.0,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  if (_scrolledUnderElevator == null) {
                    setState(() {
                      _scrolledUnderElevator = 4.0;
                    });
                  } else {
                    setState(() {
                      _scrolledUnderElevator = _scrolledUnderElevator! + 1.0;
                    });
                  }
                },
                icon: const Icon(Icons.add),
                label: Text(
                    'scrolledUnderElevation: ${_scrolledUnderElevator ?? 'default'}'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
