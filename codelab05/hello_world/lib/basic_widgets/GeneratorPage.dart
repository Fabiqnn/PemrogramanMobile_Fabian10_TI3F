import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:english_words/english_words.dart';

class GeneratorPage extends StatelessWidget {
  const GeneratorPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<GeneratorPageState>();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(appState.current.asPascalCase, style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => appState.getNext(),
            child: const Text("Next word"),
          ),
          ElevatedButton(
            onPressed: () => appState.toggleFavorite(),
            child: Text(appState.favorites.contains(appState.current)
                ? "Remove from favorites"
                : "Add to favorites"),
          ),
        ],
      ),
    );
  }
}

class GeneratorPageState extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  var favorites = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
}
