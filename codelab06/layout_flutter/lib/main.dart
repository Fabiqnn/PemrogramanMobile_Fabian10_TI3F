import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Air Terjun Tumpak Sewu',
                    style: TextStyle(
                      fontWeight:  FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kec. Pronojiwo, Kab. Lumajang, Jawa Timur, Indonesia',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Air Terjun Tumpak Sewu atau disebut juga Coban Sewu '
        'adalah sebuah air terjun berketinggian sekitar 120 meter. '
        'Air terjun ini berbatasan dengan Kabupaten Lumajang dan Kabupaten Malang,'
        ' Provinsi Jawa Timur. Air Terjun Tumpak Sewu memiliki aliran air yang '
        'menyerupai tirai sehingga termasuk dalam tipe air terjun Tiered.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter Layout : Fabian Hasbillah | 2341720170',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/tumpak_sewu.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
              alignment: Alignment(0, 0.5),
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        )
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}