import 'package:flutter/material.dart';

class CollectionImg extends StatelessWidget {
  const CollectionImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Galeri Foto')),
      body: ListView(
        
        children: [
          Stack(
            children: [
              Image.asset(
                'images/tumpak_sewu.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 1000,
              ),

              Container(
                width: double.infinity,
                height: 1000,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black54
                    ]
                  ), 
                ),
                padding: const EdgeInsets.all(8.0),
              ),
              
              Positioned(
                bottom: 16,
                left: 10,
                child: Text(
                  'Air Terjun Tumpak Sewu, Lumajang, Jawa Timur',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              )
            ],
          ),
          Image.asset('images/tumpak_sewu_2.jpg'),
          Image.asset('images/tumpak_sewu_4.jpg'),
        ],
      ),
    );
  }
}
