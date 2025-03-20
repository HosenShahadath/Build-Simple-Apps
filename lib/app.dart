import 'package:build_flutter_apps/book_reader_app/book_reader_app.dart';
import 'package:build_flutter_apps/interest_calculator_app/interest_calculator_app.dart';
import 'package:build_flutter_apps/todo_app/todo_app.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BookReaderApp(),
    );
  }
}
