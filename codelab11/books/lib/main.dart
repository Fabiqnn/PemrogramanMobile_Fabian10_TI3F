import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Demo - Fabian',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  bool isLoading = false;
  late Completer completer;

  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  Future calculate() async {
    await Future.delayed(const Duration(seconds: 5));
    completer.complete(42);
  }

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/OyB4llvAoXQC';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }

  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Back from the Future')),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              child: const Text('Go'),
              onPressed: () {
                setState(() {
                  isLoading = true;
                });
                // getData()
                //   .then((value) {
                //     result = value.body.toString().substring(0, 450);
                //   })
                //   .catchError((_) {
                //     result = 'An error occured';
                //   })
                //   .whenComplete(() {
                //     setState(() {
                //       isLoading = false;
                //     });
                //   });
                getNumber().then((value) {
                  setState(() {
                    result = value.toString();
                  });
                }).whenComplete(() {
                  setState(() {
                    isLoading = false;
                  });
                });
              },
            ),
            ElevatedButton(
              child: Text('Count'),
              onPressed: () {
                count();
              },
            ),
            const Spacer(),
            Text(result),
            const Spacer(),
            if (isLoading) const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
