import 'package:flutter/material.dart';

import 'views/get_demo.dart';
import 'views/page_transition_demo.dart';

class PageTransitionPage extends StatefulWidget {
  const PageTransitionPage({super.key});

  @override
  State<PageTransitionPage> createState() => _PageTransitionPageState();
}

class _PageTransitionPageState extends State<PageTransitionPage> {
  late PageController controller;
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Page Transitions',
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
          controller.jumpToPage(value);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'get: ^4.6.5',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'page_transition: ^2.0.9',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                children: const [
                  GetDemo(),
                  PageTransitionDemo(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
