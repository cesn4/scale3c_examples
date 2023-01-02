import 'package:flutter/material.dart';

import 'views/animations_demo.dart';
import 'views/basic_demo.dart';
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
          'View Transitions',
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
            label: 'basic',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'concentric_transition',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'animations',
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: const [
                BasicDemo(),
                ConcentricDemo(),
                AnimationsDemo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
