import 'package:batman_database/data_fetcher.dart';
import 'package:batman_database/views/movies_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MoviesList(),
    );
  }
}
