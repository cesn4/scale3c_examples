import 'package:flutter/material.dart';
import 'package:scale3c_examples/features/rive_animations/views/car_demo.dart';

import 'views/tree_demo.dart';

class RiveAnimationsPage extends StatefulWidget {
  const RiveAnimationsPage({super.key});

  @override
  State<RiveAnimationsPage> createState() => _RiveAnimationsPageState();
}

class _RiveAnimationsPageState extends State<RiveAnimationsPage> {
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
            label: 'car',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'tree',
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: const [
                CarDemo(),
                TreeDemo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
