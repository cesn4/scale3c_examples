import 'package:flutter/material.dart';

import 'views/concentric_demo.dart';

class ViewTransitionPage extends StatefulWidget {
  const ViewTransitionPage({super.key});

  @override
  State<ViewTransitionPage> createState() => _ViewTransitionPageState();
}

class _ViewTransitionPageState extends State<ViewTransitionPage> {
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
            label: 'concentric_transition: ^1.0.3',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'page_transition: ^2.0.9',
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: const [
                ConcentricDemo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
