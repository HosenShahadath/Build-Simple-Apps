import 'package:build_flutter_apps/book_reader_app/pdf_reader.dart';
import 'package:build_flutter_apps/todo_app/todo_screen.dart';
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
      home: PdfReader(),
    );
  }
}
