import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class BookReaderApp extends StatefulWidget {
  const BookReaderApp({super.key});

  @override
  State<BookReaderApp> createState() => _BookReaderAppState();
}

class _BookReaderAppState extends State<BookReaderApp> {
  final String pdfUrl = 'https://www.aeee.in/wp-content/uploads/2020/08/Sample-pdf.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Online Pdf Book Reader'),
      ),
      body: PDFView(
        filePath: pdfUrl,
        enableSwipe: true,
        swipeHorizontal: true,
        autoSpacing: false,
        pageFling: true,
      ),
    );
  }
}
