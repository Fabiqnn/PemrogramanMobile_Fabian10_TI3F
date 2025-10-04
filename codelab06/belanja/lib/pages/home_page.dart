import 'package:belanja/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar', 
      price: 5000,
      image: 'lib/image/sugar.png',
      stock: 10,
      rating: 4.2,
    ),
    Item(
      name: 'Salt', 
      price: 2000,
      image: 'lib/image/salt.png',
      stock: 20,
      rating: 4.5,
    ),
    Item(
      name: 'Rice', 
      price: 10000,
      image: 'lib/image/rice.png',
      stock: 25,
      rating: 5,
    ),
    Item(
      name: 'Cooking Oil', 
      price: 32000,
      image: 'lib/image/cooking_oil.png',
      stock: 32,
      rating: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shoping List',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Color(0xFF0197f6),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.7,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              context.push('/item', extra: item);
            },
            child: ItemCard(item: item)
          );
        },
      ),
      bottomNavigationBar: Container(
        color: Colors.blueGrey.shade50,
        padding: const EdgeInsets.all(16),
        child: const Text(
          '© Fabian Hasbillah | 2341720170',
          style: TextStyle(
            fontSize: 13
          ),
        ),
      ),
    );
  }
}