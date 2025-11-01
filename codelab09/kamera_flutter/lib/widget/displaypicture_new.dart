import 'package:flutter/material.dart';
import 'dart:io';
import 'filter_selector.dart';

class DisplaypictureNew extends StatefulWidget {
  final String imagePath;

  const DisplaypictureNew({
    super.key,
    required this.imagePath
  });

  @override
  State<DisplaypictureNew> createState() => _DisplaypictureNewState();
}

class _DisplaypictureNewState extends State<DisplaypictureNew> {
  final ValueNotifier<Color> _filterColor = ValueNotifier<Color>(Colors.white);

  final _filters = [
    Colors.white, 
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    )
  ];

  void _onFilterChanged(Color color) {
    _filterColor.value = color;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          Navigator.pop(context, true);
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Diplay Picture - 2341720170')),
        body: Stack(
          children: [
            Positioned.fill(
              child: ValueListenableBuilder(
                valueListenable: _filterColor,
                builder: (context, color, _) {
                  return Stack(
                    children: [
                      Image.file(
                        File(widget.imagePath),
                        fit: BoxFit.cover
                      ),
                      Container(
                        color: color.withValues(alpha: 0.3),
                      )
                    ],
                  );
                },
              ),
            ),

            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: FilterSelector(
                filters: _filters, 
                onFilterChanged: _onFilterChanged, 
                padding: const EdgeInsets.all(8)
              ),
            )
          ]
        ),
      ),
    
    );
  }
}