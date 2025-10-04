import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final Item item;
  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0197f6),
        title: Text(
          'Shopping List',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          Hero(
            tag: 'imageHero-${item.name}',
            child: Image.asset(
              item.image,
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
              alignment: Alignment(0, 0.5),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(8),
            child: Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Nama: ${item.name}'),
                Text('Price: ${item.price}')
              ]
            )
          )
        ],
      ),
    );
  }
}