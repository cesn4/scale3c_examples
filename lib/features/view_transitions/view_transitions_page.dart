import 'package:flutter/material.dart';
import 'package:scale3c_examples/features/view_transitions/views/fade_through_transition.dart';

import 'views/basic_transition.dart';
import 'views/concentric_demo.dart';
import 'views/container_transitions.dart';
import 'views/shared_axis_transition.dart';

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
            label: 'fade_trough',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'axis',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'container',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'concentric',
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
                FadeThroughTransitionDemo(),
                SharedAxisTransitionDemo(),
                OpenContainerTransformDemo(),
                ConcentricDemo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
