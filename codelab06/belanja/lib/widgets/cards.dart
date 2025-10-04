import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Item item; 
  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Hero(
              tag: 'imageHero-${item.name}', 
              child: Image.asset(
                item.image,
                fit: BoxFit.cover,
                width: double.infinity,
              ), 
            )
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              item.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Stok: ${item.price}'),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.orange, size: 16),
                    Text(item.rating.toString())
                  ]
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text('Stok: ${item.stock}'),
          ),
        ],
      ),
    );
  }
}