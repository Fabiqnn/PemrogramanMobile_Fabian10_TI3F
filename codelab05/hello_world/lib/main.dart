import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/GeneratorPage.dart';
import 'package:hello_world/basic_widgets/dialog_widget.dart';
import 'package:hello_world/basic_widgets/favorite_widget.dart';
import 'package:hello_world/basic_widgets/input_widget.dart';
import 'package:provider/provider.dart';
import 'basic_widgets/date_picker.dart';
import 'basic_widgets/scafold_widget.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => GeneratorPageState(),
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true, // kalau pakai Material 3
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override 
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = GeneratorPage(title: 'Home');
      case 1:
        page = FavoriteWidget();
      case 2:
        page = DatePicker(title: 'Date Picker');
      case 3:
        page = ScafoldWidget(title: 'Counter');
      case 4:
        page = DialogWidget(title: 'Alert Dialog');
      case 5:
        page = InputWidget(title: 'Input Text');
      default:
        throw UnimplementedError('Tidak ada widget yang diselect untuk id $selectedIndex');
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  extended: constraints.maxWidth >= 600, 
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.favorite),
                      label: Text('Favorites'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.calendar_month),
                      label: Text('Date Picker'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.add),
                      label: Text('Add'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.add_alert_outlined),
                      label: Text('Alert'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.input_rounded),
                      label: Text('Input Text'),
                    ),
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                )
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                ) 
              )
            ],
          ),
        );
      }
    );
  }
}