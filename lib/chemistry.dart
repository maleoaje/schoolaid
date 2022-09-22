import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ChemistryPage extends StatefulWidget {
  const ChemistryPage({Key? key}) : super(key: key);

  @override
  State<ChemistryPage> createState() => _ChemistryPageState();
}

class _ChemistryPageState extends State<ChemistryPage> {
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
            'Chemistry',
          ),
        ),
      ),
      body: SfPdfViewer.asset(
        'assets/chemistry.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}
