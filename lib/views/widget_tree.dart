import 'package:aidy/views/pages/explore_page.dart';
import 'package:aidy/views/pages/home_page.dart';
import 'package:aidy/views/pages/library_page.dart';
import 'package:aidy/views/pages/profile_page.dart';
import 'package:aidy/views/pages/scan_page.dart';
import 'package:aidy/views/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:aidy/data/notifiers.dart';

List<Widget> pages = [
  HomePage(),
  ExplorePage(),
  ScanPage(),
  LibraryPage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
