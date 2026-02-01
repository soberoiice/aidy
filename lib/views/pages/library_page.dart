import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library'),
        backgroundColor: Colors.white,
        toolbarHeight: 100.0,
        centerTitle: true,
      ),
    );
  }
}
