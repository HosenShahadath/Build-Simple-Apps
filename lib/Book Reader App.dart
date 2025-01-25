import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

void main(){
  runApp(PdfReaderApp());
}

class PdfReaderApp extends StatelessWidget {
  const PdfReaderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pdf Reader App',
      home: PdfViewPage(),
    );
  }
}

class PdfViewPage extends StatefulWidget {
  const PdfViewPage({super.key});

  @override
  State<PdfViewPage> createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {
  final String pdfUrl = 'http://www.africau.edu/images/default/sample.pdf';

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Online Pdf Book Reader'),
     ),
     body: PDFView(
       filePath: pdfUrl,
       enableSwipe: true,
       swipeHorizontal: true,
       autoSpacing: true,
       pageFling: true,
     ),
   );
  }
}

