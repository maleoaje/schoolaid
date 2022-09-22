import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PhysicsPage extends StatefulWidget {
  const PhysicsPage({Key? key}) : super(key: key);

  @override
  State<PhysicsPage> createState() => _PhysicsPageState();
}

class _PhysicsPageState extends State<PhysicsPage> {
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
            'Physics',
          ),
        ),
      ),
      body: SfPdfViewer.asset(
        'assets/physics.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}
