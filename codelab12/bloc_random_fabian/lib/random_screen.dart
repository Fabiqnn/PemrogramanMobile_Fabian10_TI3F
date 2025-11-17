import 'package:bloc_random_fabian/random_bloc.dart';
import 'package:flutter/material.dart';

class RandomScreen extends StatefulWidget {
  const RandomScreen({super.key});

  @override
  State<RandomScreen> createState() => _RandomscreenState();
}

class _RandomscreenState extends State<RandomScreen> {
  final _bloc = RandomNumberBloc();

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Random Number'),),
      body: Center(
        child: StreamBuilder<int>(stream: _bloc.randomNumber, initialData: 0, builder: (context, snapshot) {
          return Text(
            'Random Number: ${snapshot.data}',
            style: const TextStyle(fontSize: 24),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => _bloc.generateRandom.add(null), child: const Icon(Icons.refresh),),
    );
  }
}