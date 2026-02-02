import 'package:aidy/views/widgets/scan_history_widget.dart';
import 'package:flutter/material.dart';

class ScanHistoryPage extends StatelessWidget {
  const ScanHistoryPage({super.key});

  final List<Map<String, dynamic>> items = const [
    {
      'description': "lawjdnjwnaond okwokadodwnoa dnownoao wndoajnwdoj",
      'title': 'Account & Security',
    },
    {
      'description': "lawjdnjwn aondokwokado dwnoadnown oaowndoajnwdoj",
      'title': 'Payment Methods',
    },
    {
      'description': "lawjdn jwnaondokwokadodwnoadnow noaowndoajn wdoj",
      'title': 'Billing & Subscriptions',
    },
    {
      'description': "lawjdnjwnaondokwokadodwnoadnownoaowndoajnwdoj",
      'title': 'Linked Accounts',
    },
    {
      'description': "lawjdnjwnaondokwokadodwnoadnownoaowndoajnwdoj",
      'title': 'Data & Analytics',
    },
    {
      'description': "law dnjwnaondo kwokadodwnoadnownoa owndoajnwdoj",
      'title': 'App Appearance',
    },
    {
      'description': "lawjd njwnaondokwoka dodwnoadnownoaow ndoajnwdoj",
      'title': 'Help & Support',
    },
    {
      'description': "lawjdnjwnaondokwokadodwnoad ownoaowndoajnwdoj",
      'title': 'Invite Your Friends',
    },
    {
      'description': "lawjdnjw naond okwokadodwnoadnownoa ownd oajnwdoj",
      'title': 'Rate Us',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('scan history'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [for (final item in items) ScanHistoryWidget(data: item)],
          ),
        ),
      ),
    );
  }
}
