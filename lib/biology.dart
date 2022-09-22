import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BiologyPage extends StatefulWidget {
  const BiologyPage({Key? key}) : super(key: key);

  @override
  State<BiologyPage> createState() => _BiologyPageState();
}

class _BiologyPageState extends State<BiologyPage> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 22, 75, 24),
          centerTitle: true,
          elevation: 0.3,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_sharp,
            ),
          ),
          title: const Text(
            'Biology',
          ),
        ),
      ),
      body: SfPdfViewer.asset(
        'assets/biology.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}
