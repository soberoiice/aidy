import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
        backgroundColor: Colors.white,
        toolbarHeight: 100.0,
        centerTitle: true,
      ),
    );
  }
}
