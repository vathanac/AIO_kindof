import 'package:flutter/material.dart';

class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Egg',
      'Flour',
      'Chip',
      'hello',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Items'),
      ),
      body: ListView(
        children: List.generate(
          items.length,
          (index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(items[index].substring(0, 1)),
              ),
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
