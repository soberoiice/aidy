import 'package:aidy/views/pages/scan_history_page.dart';
import 'package:flutter/material.dart';

class SettingListWidget extends StatelessWidget {
  const SettingListWidget({super.key});

  final List<Map<String, dynamic>> settings1 = const [
    {'icon': Icons.history, 'title': 'Scan History', 'page': ScanHistoryPage()},
    {'icon': Icons.settings, 'title': 'Preferences'},
  ];
  final List<Map<String, dynamic>> settings2 = const [
    {'icon': Icons.shield, 'title': 'Account & Security'},
    {'icon': Icons.payment, 'title': 'Payment Methods'},
    {'icon': Icons.receipt, 'title': 'Billing & Subscriptions'},
    {'icon': Icons.link, 'title': 'Linked Accounts'},
    {'icon': Icons.analytics, 'title': 'Data & Analytics'},
    {'icon': Icons.visibility, 'title': 'App Appearance'},
    {'icon': Icons.help_outline, 'title': 'Help & Support'},
    {'icon': Icons.person_add, 'title': 'Invite Your Friends'},
    {'icon': Icons.star_border, 'title': 'Rate Us'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              for (final set1 in settings1)
                ListTile(
                  leading: Icon(set1['icon']),
                  title: Text(set1['title']),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return set1['page'];
                        },
                      ),
                    );
                  },
                ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              for (final set2 in settings2)
                ListTile(
                  leading: Icon(set2['icon']),
                  title: Text(set2['title']),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
              ListTile(
                iconColor: Colors.red,
                leading: Icon(Icons.logout),
                title: Text(style: TextStyle(color: Colors.red), "Log Out"),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
