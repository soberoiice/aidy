import 'package:flutter/material.dart';
import 'package:aidy/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBarTheme(
          data: NavigationBarThemeData(
            iconTheme: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return const IconThemeData(color: Colors.blue, size: 28);
              }
              return const IconThemeData(color: Colors.grey, size: 24);
            }),
            labelTextStyle: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                );
              }
              return const TextStyle(color: Colors.grey);
            }),
          ),
          child: NavigationBar(
            backgroundColor: Colors.white,
            indicatorColor: Colors.blue.withOpacity(0),
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                icon: Icon(Icons.explore),
                label: 'Explore',
              ),
              SizedBox(
                width: 40,
                child: Material(
                  color: Colors.blue,
                  shape: const CircleBorder(),
                  child: IconButton(
                    icon: const Icon(Icons.crop_free),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ), // space for FAB
              NavigationDestination(
                icon: Icon(Icons.auto_awesome_mosaic),
                label: 'Library',
              ),
              NavigationDestination(icon: Icon(Icons.person), label: 'Account'),
            ],
            selectedIndex: selectedPage,
            onDestinationSelected: (value) {
              selectedPageNotifier.value = value;
            },
          ),
        );
      },
    );
  }
}
