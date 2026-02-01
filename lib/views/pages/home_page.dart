import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.white,
        toolbarHeight: 100.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
